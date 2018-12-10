package com.popovich.springsecurityapp.service.imp;

import com.popovich.springsecurityapp.dao.RoleDao;
import com.popovich.springsecurityapp.dao.UserDao;
import com.popovich.springsecurityapp.model.Role;
import com.popovich.springsecurityapp.model.User;
import com.popovich.springsecurityapp.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.HashSet;
import java.util.Set;

@Service
public class UserServiceImp implements UserService {

    @Autowired
    private UserDao userDao;

    @Autowired
    private RoleDao roleDao;

    @Autowired
    private BCryptPasswordEncoder bCryptPasswordEncoder;

    @Override
    public void save(User user) {
        user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
        Set<Role> roles = new HashSet<>();
        roles.add(roleDao.getOne(1L));
        user.setRoles(roles);
        userDao.save(user);
    }

    @Override
    public User findByUsername(String userName) {
        return userDao.findByUserName(userName);
    }
}
