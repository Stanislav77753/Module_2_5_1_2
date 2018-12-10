package com.popovich.springsecurityapp.dao;

import com.popovich.springsecurityapp.model.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserDao extends JpaRepository<User, Long> {

    User findByUserName(String userName);
}
