package com.demo.service;

import com.demo.model.BillingAddress;

public interface BillingService {

	BillingAddress saveOrUpdateBillingAddress(BillingAddress billing);
}
