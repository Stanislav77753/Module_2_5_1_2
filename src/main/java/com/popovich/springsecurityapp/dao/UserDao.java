package com.popovich.springsecurityapp.dao;

import com.popovich.springsecurityapp.model.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface UserDao extends JpaRepository<User, Long> {

    User findByUserName(String userName);

}
