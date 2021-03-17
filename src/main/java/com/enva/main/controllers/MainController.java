package com.enva.main.controllers;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.config.Task;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.enva.main.models.Section;
import com.enva.main.models.User;
import com.enva.main.services.SectionService;
import com.enva.main.services.UserService;
@Controller
public class MainController {
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private SectionService sectionService;
	

	@GetMapping("/")
	public String index(Model model, HttpSession session) {
		if(session.getAttribute("userid")==null) {
			return "redirect:/login";	
		} 
		Long userId=(Long) session.getAttribute("userid");
        User u = userService.findUserById(userId);
        model.addAttribute("user", u);
        model.addAttribute("allSections", sectionService.allSections());
		return "index.jsp";
	}
	
	@GetMapping("/index")
	public String dashboard(Model model, HttpSession session) {
		if(session.getAttribute("userId")==null) {
			return "redirect:/login";	
		} 
		Long userId=(Long) session.getAttribute("userId");
        User u = userService.findUserById(userId);
        model.addAttribute("user", u);
		model.addAttribute("allUsers", userService.allUsers());
		model.addAttribute("allSections", sectionService.allSections());
		return "index.jsp";
	}
	
	@GetMapping("/section/{id}")
	public String showSection(@PathVariable("id")Long id, @ModelAttribute("section")Section section, Model model, HttpSession session) {
		 if(session.getAttribute("userId")==null){
			 System.out.println("if it fails");
		  return "redirect:/login"; 
		 }
		 else {
		 Section singleSection = sectionService.findSection(id);
		 model.addAttribute("sectionUsers", singleSection.getMembers());
		 model.addAttribute("section", sectionService.findSection(id));
		 model.addAttribute("users", userService.allUsers());
		 model.addAttribute(userService.allUsers()); List<User> users =
		 userService.allUsers(); model.addAttribute("users", users);
		 return "showProfile.jsp";
		 }
	}
@GetMapping("/section/profile/{id}")
public String showProfile(@PathVariable("id")Long id, @ModelAttribute("section")Section section, Model model, HttpSession session) {
	 if(session.getAttribute("userId")==null){
		 System.out.println("if it fails");
	  return "redirect:/login"; 
	 }
	 else {
	 User user = userService.findUserById(id);
	 model.addAttribute("section", sectionService.findSection(id));
	 model.addAttribute("sections", sectionService.allSections());
	 model.addAttribute("user", user);
	 return "editUser.jsp";
	 }
}}
//	 @RequestMapping("/task/{id}")
//	 public String task(@PathVariable("id")Long id, @ModelAttribute("task")Task task, Model model, HttpSession session)
//		{
//	 if(session.getAttribute("userid")==null) { return "redirect:/login"; }
//	 model.addAttribute("task", taskService.findTask(id));
//	 model.addAttribute("user", userService.allUsers()); taskService.allTasks();
//	 model.addAttribute(userService.allUsers()); List<User> users =
//	 userService.allUsers(); model.addAttribute("users", users);
//	  
//	 priorityService.allPriorities();
//	 model.addAttribute(priorityService.allPriorities()); List<Priority>
//	 priorities = priorityService.allPriorities();
//	 model.addAttribute("priorities", priorities); return "showTask.jsp";
//	 
//	 }
	
	/*
	 * @GetMapping("/createTask") public String
	 * create(@Valid @ModelAttribute("task")Task task, BindingResult result, Model
	 * model, HttpSession session) { if(session.getAttribute("userid")==null) {
	 * return "redirect:/login"; } taskService.allTasks();
	 * model.addAttribute(userService.allUsers()); List<User> users =
	 * userService.allUsers(); model.addAttribute("users", users);
	 * 
	 * priorityService.allPriorities();
	 * model.addAttribute(priorityService.allPriorities()); List<Priority>
	 * priorities = priorityService.allPriorities();
	 * model.addAttribute("priorities", priorities);
	 * 
	 * return "createTask.jsp"; }
	 * 
	 * @PostMapping("/createTask") public String
	 * submitTask(@ModelAttribute("task")Task task, BindingResult res, Model model)
	 * { if (res.hasErrors()) { return "/createTask.jsp"; } else {
	 * taskService.createTask(task); return "redirect:/index"; } }
	 * 
	 * @RequestMapping("/task/{id}") public String task(@PathVariable("id")Long
	 * id, @ModelAttribute("task")Task task, Model model, HttpSession session) {
	 * if(session.getAttribute("userid")==null) { return "redirect:/login"; }
	 * model.addAttribute("task", taskService.findTask(id));
	 * model.addAttribute("user", userService.allUsers()); taskService.allTasks();
	 * model.addAttribute(userService.allUsers()); List<User> users =
	 * userService.allUsers(); model.addAttribute("users", users);
	 * 
	 * priorityService.allPriorities();
	 * model.addAttribute(priorityService.allPriorities()); List<Priority>
	 * priorities = priorityService.allPriorities();
	 * model.addAttribute("priorities", priorities); return "showTask.jsp";
	 * 
	 * }
	 */

//	 @RequestMapping("/edit/task/{id}")
//	 public String edit(@Valid @ModelAttribute("task")Task task, BindingResult result, @PathVariable("id")Long id, Model model) { model.addAttribute("task",
//			 			taskService.findTask(id)); taskService.allTasks();
//			 			model.addAttribute(userService.allUsers()); List<User> users =
//			 			userService.allUsers(); model.addAttribute("users", users);
//			 			priorityService.allPriorities();
//			 			model.addAttribute(priorityService.allPriorities()); List<Priority>
//			 			priorities = priorityService.allPriorities();
//			 			model.addAttribute("priorities", priorities);
//	  
//	  return "editUser.jsp"; }
//	  
//	 * @PostMapping("/edit/task/{id}") public String
//	 * editEvent(@Valid @ModelAttribute("task")Task task, BindingResult
//	 * result, @PathVariable("id")Long id, Model model) {
//	 * taskService.updateTask(task); return "redirect:/task/" + id; }
//	 * 
//	 * @RequestMapping(value="/tasks/{id}", method=RequestMethod.DELETE) public
//	 * String destroy(@PathVariable("id") Long id) { taskService.deleteTask(id);
//	 * return "redirect:/"; }