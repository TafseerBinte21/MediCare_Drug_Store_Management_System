package com.tafa.data;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.tafa.entity.drug;


@Repository
public  class drugImpl implements Drugdata {
	
	@Autowired
	JdbcTemplate JdbcTemplate;


	@Override
	public String Add(drug d) {
		drug name = Search(d.getName());
		if(name==null)
		{
			int rowCount=JdbcTemplate.update("insert into drugrecord values('"+d.getID()+"','"+d.getName()+"','"+d.getQuantity()+"','"+d.getPrice()+"','"+d.getDescription()+"')");
			if(rowCount==1)
			{
				return "success";
			}else {
				return "success1";
			}
		}else
		{
			return "success1";
		}
	}


	

	public String Delete(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	public drug Search(String name) {
		
		drug s;
		List<drug> drugList=JdbcTemplate.query("select * from drugrecord where NAME='"+name+"'", (rs,rowCount) -> {
			drug dg = new drug();
			dg.setID(Integer.parseInt(rs.getString("ID")));
			dg.setName(rs.getString("NAME"));
			dg.setQuantity(Integer.parseInt(rs.getString("QUANTITY")));
			dg.setPrice(Integer.parseInt(rs.getString("PRICE")));
			dg.setDescription(rs.getString("DESCRIPTION"));
			
			return dg;
		});
		
		if(drugList.isEmpty()==true)
		{
			
			s=null;
			
			
		}else {
			
			
			return s=drugList.get(0);
			
		}
		return s;
		
		
		
	}



	@Override
	public String Search(drug g) {
		drug name = Search(g.getName());
		
		if(name==null)
		{
//			int rowCount=JdbcTemplate.update("insert into drugrecord values('"+g.getName()+"')");
//			System.out.println(rowCount);
//			if(rowCount==1)
//				
//			{
//				
//				return "exists";
//			}else {
//				return "success2";
//			}
			return "notexists";
		}else
		{
			return "success2";
		}
	
		
	}
	}








