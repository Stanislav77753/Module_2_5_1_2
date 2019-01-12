package com.popovich.springsecurityapp.service;

import com.popovich.springsecurityapp.model.User;

import java.util.List;

public interface UserService {

    void save(User user);

    User findByUsername(String userName);
    List<User> getAllUsers();
}
