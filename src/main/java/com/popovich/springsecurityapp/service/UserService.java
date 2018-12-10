package com.popovich.springsecurityapp.service;

import com.popovich.springsecurityapp.model.User;

public interface UserService {

    void save(User user);

    User findByUsername(String userName);
}
