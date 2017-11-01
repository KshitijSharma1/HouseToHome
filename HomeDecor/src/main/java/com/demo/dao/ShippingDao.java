package com.demo.dao;

import com.demo.model.ShippingAddress;

public interface ShippingDao {

	
	ShippingAddress saveOrUpdateShippingAddress(ShippingAddress shipping);
}
