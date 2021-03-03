package com.enva.main.repos;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.enva.main.models.Section;

@Repository
public interface SectionRepo extends CrudRepository<Section, Long>{
    // this method retrieves all the books from the database
    List<Section> findAll();
}
