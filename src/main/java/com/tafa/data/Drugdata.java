package com.tafa.data;

import com.tafa.entity.drug;

public interface Drugdata {
	
	public String Add(drug d) ;
	public String Delete(int id);
	public String Search(drug d);

}
