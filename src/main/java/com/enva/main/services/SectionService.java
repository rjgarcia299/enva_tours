package com.enva.main.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.enva.main.models.Section;
import com.enva.main.repos.SectionRepo;

@Service
public class SectionService {
	
    // adding the section repository as a dependency
	@Autowired
    private SectionRepo sectionRepo;
    
    // returns all the sections
    public List<Section> allSections() {
        return sectionRepo.findAll();
    }
    
    // creates a section
    public Section createSection(Section b) {
        return sectionRepo.save(b);
    }
    
    // save a section
    public Section updateSection(Section b) {
        return sectionRepo.save(b);
    }
    
    // retrieves a section
    public Section findSection(Long id) {
        Optional<Section> optionalSection = sectionRepo.findById(id);
        if(optionalSection.isPresent()) {
            return optionalSection.get();
        } else {
            return null;
        }
    }
}
