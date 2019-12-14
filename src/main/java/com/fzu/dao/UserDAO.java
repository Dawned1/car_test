package com.fzu.dao;

import java.util.List;

import com.fzu.pojo.User;

public interface UserDAO {
    int getTotal();
    void add(User user);
    //void add(int id,String name,String password);
    void update(User user);
    void delete(int id) ;
    User get(int id);
    List<User> list();
    List<User> list(int start, int count) ;
    boolean isExist(String name) ;
    User get(String name) ;
    User get(String name, String password) ;
}