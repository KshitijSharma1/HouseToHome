package com.demo.service.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.dao.BillingDao;
import com.demo.model.BillingAddress;
import com.demo.service.BillingService;

@Service
public class BillingServiceImpl implements BillingService {
	@Autowired
private BillingDao billingDao;
	
	public BillingAddress saveOrUpdateBillingAddress(BillingAddress billing) {
		return billingDao.saveOrUpdateBillingAddress(billing);
	}

}
