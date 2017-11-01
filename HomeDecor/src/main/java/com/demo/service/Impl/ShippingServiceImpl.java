package com.demo.service.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.dao.ShippingDao;
import com.demo.model.ShippingAddress;
import com.demo.service.ShippingService;

@Service
public class ShippingServiceImpl implements ShippingService {
	@Autowired
private ShippingDao shippingDao;
	
	public ShippingAddress saveOrUpdateShippingAddress(ShippingAddress shipping) {
		return shippingDao.saveOrUpdateShippingAddress(shipping);
	}

	

}