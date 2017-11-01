package com.demo.dao.Impl;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.demo.dao.ShippingDao;
import com.demo.model.ShippingAddress;

@Repository
@Transactional
public class ShippingDaoImpl implements ShippingDao {
	@Autowired
	private SessionFactory sessionFactory;

	public ShippingAddress saveOrUpdateShippingAddress(ShippingAddress shipping) {
		Session session=sessionFactory.openSession();
		session.saveOrUpdate(shipping); //insert into BillingAdress values (.....)
		session.flush();
		session.close();
		System.out.println(shipping.getShipId());
		return shipping;
	}
	
}