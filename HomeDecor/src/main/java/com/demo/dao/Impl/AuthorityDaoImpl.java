package com.demo.dao.Impl;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.demo.dao.AuthorityDao;
import com.demo.model.Authorities;

@Repository
@Transactional
public class AuthorityDaoImpl implements AuthorityDao {
	@Autowired
	private SessionFactory sessionFactory;

	public Authorities saveOrUpdateAuthority(Authorities authority) {
		Session session = sessionFactory.openSession();
		session.saveOrUpdate(authority); //insert into authorities values (.....)
		session.flush();
		session.close();
		System.out.println(authority.getAuthoritiesId());
		return authority;
	}

	
	
}
