package com.demo.dao.Impl;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.demo.dao.UserDao;
import com.demo.model.Users;


@Repository
@Transactional
public class UserDaoImpl implements UserDao {
@Autowired
private SessionFactory sessionFactory;

	public Users saveOrUpdateUsers(Users users) {
		System.out.println(users.getUsersId());
		Session session=sessionFactory.openSession();
		session.saveOrUpdate(users); //insert into users values (.....)
		session.flush();
		session.close();
		System.out.println(users.getUsersId());
		return users;
	}

}
