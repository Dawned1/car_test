package com.fzu.dao;


import java.util.List;

import javax.annotation.Resource;

import com.fzu.pojo.User;
import lombok.Setter;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

@Setter
public class UserDAOHibImpl implements UserDAO {

	@Resource(name = "sessionFactory")
	private SessionFactory sessionFactory; // SessionFactory对象
	
	@Override
	public int getTotal() {
		int total=0;
		try {
			Session session = sessionFactory.getCurrentSession();
			String hql = "SELECT count(u) FROM User AS u ";
			Query query = session.createQuery(hql);
			total = ((Long)query.uniqueResult()).intValue();
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		} 
		return total;
	}

	@Override
	public void add(User user) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.beginTransaction();          //开启事务
	    session.save(user);//执行完user变成 持久化状态                  //执行数据库添加操作
	    //user.setPassword("654321");
	    session.getTransaction().commit();
	}

	@Override
	public void update(User user) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
	    session.update(user);
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
	    //开启事务
	    User user=(User)session.get(User.class, id);
	    session.delete(user);//执行完user变成 持久化状态                  //执行数据库添加操作
	    //user.setPassword("654321");
	}

	@Override
	public User get(int id) {
		Session session = sessionFactory.getCurrentSession();
	    User user=(User)session.get(User.class, id);
		return user;
	}

	@Override
	public List<User> list() {
		// TODO Auto-generated method stub
		List<User> users = null;
		try {
			Session session = sessionFactory.getCurrentSession();

			String hql = "SELECT u FROM User AS u ";
			Query query = session.createQuery(hql);
			users = query.list();
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}
		return users;
	}

	@Override
	public List<User> list(int start, int count) {
		List<User> users = null;
		try {
			Session session = sessionFactory.getCurrentSession();
			String hql = "SELECT u FROM User AS u ";
			Query query = session.createQuery(hql);
			query.setFirstResult(start).setMaxResults(count);
			users = query.list();
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}
		return users;
	}

	@Override
	public boolean isExist(String name) {
		User user = get(name);
        return user != null;
	}

	@Override
	public User get(String name) {
		Session session = sessionFactory.getCurrentSession();

		String hql = "SELECT u FROM User AS u WHERE u.userName = :name";
		Query query = session.createQuery(hql);
		query.setParameter("name", name);
		List<User> users = query.list();
		User user = null;
		if(users.size()!=0)
			user=users.get(0);
        return user;
	}

	@Override
	public User get(String name, String password) {
		Session session = sessionFactory.getCurrentSession();

		String hql = "SELECT u FROM User AS u WHERE u.userName = :name and u.password = :password";
		Query query = session.createQuery(hql);
		query.setParameter("name", name);
		query.setParameter("password", password);
		List<User> users = query.list();
		User user = null;
		if(users.size()!=0)
			user=users.get(0);
        return user;
	}

}
