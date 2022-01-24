package com.tafa.services;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tafa.data.Drugdata;
import com.tafa.entity.drug;

@Service
public class drugServicesImpl implements drugServices {
	
	@Autowired
	Drugdata drugdata;
	
	
	@Override
	public String Add(drug d) {
		String status = drugdata.Add(d);
		return status;
	}

	@Override
	public String Search(drug d) {
		String status = drugdata.Search(d);
		return status;
	}

	@Override
	public String Delete() {
		// TODO Auto-generated method stub
		return null;
	}

}
