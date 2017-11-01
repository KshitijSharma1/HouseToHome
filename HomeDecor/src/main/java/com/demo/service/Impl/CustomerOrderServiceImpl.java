package com.demo.service.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.dao.CustomerOrderDao;
import com.demo.model.CustomerOrder;
import com.demo.service.CustomerOrderService;

@Service
public class CustomerOrderServiceImpl implements CustomerOrderService {
	@Autowired
	private CustomerOrderDao customerOrderDao;

	public void addCustomerOrder(CustomerOrder customerOrder) {
		customerOrderDao.addCustomerOrder(customerOrder);
	}
	

	public double getCustomerOrderGrandTotal(int cartId) {
		// TODO Auto-generated method stub
		return customerOrderDao.getCustomerOrderGrandTotal(cartId);
	}
}
