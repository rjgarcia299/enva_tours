package com.enva.main.repos;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.enva.main.models.User;
@Repository
public interface UserRepo extends CrudRepository<User, Long> {
    User findByEmail(String email);
}