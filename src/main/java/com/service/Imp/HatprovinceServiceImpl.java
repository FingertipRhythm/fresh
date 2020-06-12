package com.service.Imp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.HatprovinceDao;
import com.pojo.HatProvince;
import com.service.HatprovinceService;


@Service
public class HatprovinceServiceImpl implements HatprovinceService {
	@Autowired
	private HatprovinceDao hid;
	public HatProvince findpro() {
		
		
		return hid.findpro();
	}

}
