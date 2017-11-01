package com.demo.dao;

import com.demo.model.BillingAddress;

public interface BillingDao {
	
	BillingAddress saveOrUpdateBillingAddress(BillingAddress billing);
}
