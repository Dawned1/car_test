package com.fzu.service;

import com.fzu.pojo.User;
import org.hibernate.SessionFactory;

import javax.annotation.Resource;
import java.util.List;

public interface UserService {
    List<User> list();
}
