package com.fzu.service;

import com.fzu.dao.UserDAO;
import com.fzu.pojo.User;
import org.hibernate.SessionFactory;

import javax.annotation.Resource;
import java.util.List;

public class UserServiceImpl implements UserService {
    @Resource(name = "userDao")
    private UserDAO userDao; // SessionFactory对象

    @Override
    public List<User> list() {
        return userDao.list();
    }
}
