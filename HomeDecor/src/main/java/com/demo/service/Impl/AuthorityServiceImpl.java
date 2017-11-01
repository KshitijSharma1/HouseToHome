package com.demo.service.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.dao.AuthorityDao;
import com.demo.model.Authorities;
import com.demo.service.AuthorityService;

@Service
public class AuthorityServiceImpl implements AuthorityService {
	@Autowired
	private AuthorityDao authorityDao;


	public Authorities saveOrUpdateAuthority(Authorities authority) {
		return authorityDao.saveOrUpdateAuthority(authority);
	}

}
