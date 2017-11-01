package com.demo.service;

import com.demo.model.ShippingAddress;

public interface ShippingService {
	
	ShippingAddress saveOrUpdateShippingAddress(ShippingAddress shipping);
}
