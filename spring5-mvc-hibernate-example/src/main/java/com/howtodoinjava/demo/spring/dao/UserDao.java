package com.howtodoinjava.demo.spring.dao;

import java.util.List;

import com.howtodoinjava.demo.spring.model.User;

public interface UserDao {
   void save(User user);
   List<User> list();

    public void delete(String Del);
    public void update(String upd);
}
