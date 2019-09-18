package com.howtodoinjava.demo.spring.dao;

import java.util.List;

import javax.persistence.TypedQuery;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.howtodoinjava.demo.spring.model.User;

@Repository
public class UserDaoImp implements UserDao {

   @Autowired
   private SessionFactory sessionFactory;

   @Override
   public void save(User user) {
      sessionFactory.getCurrentSession().save(user);
   }

   @Override
   public List<User> list() {
      @SuppressWarnings("unchecked")
      TypedQuery<User> query = sessionFactory.getCurrentSession().createQuery("from User");
      return query.getResultList();
   }

    @Override
    public void delete(String Del) {
        User user=sessionFactory.getCurrentSession().get(User.class, Del);
        sessionFactory.getCurrentSession().delete(user);
    }
    
    @Override
    public void update(String Upd) {
        User user=sessionFactory.getCurrentSession().get(User.class, Upd);
        sessionFactory.getCurrentSession().update(user);
    }

}
