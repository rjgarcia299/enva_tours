package com.enva.main.controllers;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.enva.main.models.User;
import com.enva.main.services.SectionService;
import com.enva.main.services.UserService;

@Controller
public class LoginController {
	
		@Autowired
		private UserService userService;
		@Autowired
		private SectionService sectionService;
		
	    
	    
	    @RequestMapping("/registration")
	    public String registerForm(@ModelAttribute("user") User user, Model model) {
	    	model.addAttribute("sections", sectionService.allSections());
	 return "registrationPage.jsp";
	    }
	    
	    @RequestMapping("/login")
	    public String login() {
	        return "loginPage.jsp";
	    }
	    
	    @RequestMapping(value="/registration", method=RequestMethod.POST)
	    public String registerUser(@Valid @ModelAttribute("user") User user, BindingResult result, HttpSession session) {
	    	if(result.hasErrors()) {
	    		return "registrationPage.jsp";
	    	}
	    	User newUser = userService.registerUser(user);
	    	session.setAttribute("userId", newUser.getId());
	    	return "redirect:/index";
	      
	    }
	    
	    @RequestMapping(value="/login", method=RequestMethod.POST)
	    public String loginUser(
				@RequestParam("email") String email, 
				@RequestParam("password") String password, 
				Model model, HttpSession session, 
				RedirectAttributes flash
			) {
				// if the user is authenticated, save their user id in session
				// else, add error messages and return the login page
				if(userService.authenticateUser(email, password)) {
					System.out.println("if it runs");
				User thisUser = userService.findByEmail(email);
				session.setAttribute("userId", thisUser.getId());
				return "redirect:/index";
				}
				System.out.println("if it hads errors");
				flash.addFlashAttribute("error", "failed to login");
				return "redirect:/registration";
				}
	    
	    @RequestMapping("/home")
	    public String home(HttpSession session, Model model) {
	        Long userId=(Long) session.getAttribute("userid");
	        User u = userService.findUserById(userId);
	        model.addAttribute("user", u);
	        return "index.jsp";
	    }
	    @RequestMapping("/logout")
	    public String logout(HttpSession session) {
	    	session.invalidate();
	    	return "redirect:/login";
	    }
	}