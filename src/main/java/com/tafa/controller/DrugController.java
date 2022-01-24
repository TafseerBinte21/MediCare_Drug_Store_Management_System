package com.tafa.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.tafa.entity.drug;
import com.tafa.services.drugServices;
@Controller
public class DrugController {
	
	@Autowired
	drugServices dservice;
	
	
	@RequestMapping("/home")
	public String displayHome() 
	{
		return "index";
	}
	
	@RequestMapping("/services")
	public String displayServices() 
	{
		return "services";
	}
	
	@RequestMapping("/about")
	public String displayAbout() 
	{
		return "about";
	}

	@RequestMapping("/covid")
	public String displayContact() 
	{
		return "covid";
	}
	
	@RequestMapping("/addpage")
	public String addPage() 
	{
		return "addpage";
	}
	
	@RequestMapping("/searchpage")
	public String searchPage() 
	{
		return "searchpage";
	}
	
	@RequestMapping("/list")
	public String list() 
	{
	return "list";
	}
	
	@RequestMapping("/notexists")
	public String notexists() 
	{
	return "notexists";
	}
	
	@RequestMapping("/covidmed")
	public String covidmed() 
	{
	return "covidmed";
	}
	
	@RequestMapping("/covidess")
	public String covidess() 
	{
	return "covidess";
	}

	
	@RequestMapping("/add")
	public String add(ModelMap map,@RequestParam String id,@RequestParam String name,@RequestParam String quantity,@RequestParam String price, @RequestParam String description) 
	{
		drug d = new drug();
		d.setID(Integer.parseInt(id));
		d.setName(name);
		d.setQuantity(Integer.parseInt(quantity));
		d.setPrice(Integer.parseInt(price));
		d.setDescription(description);
		
		String status = dservice.Add(d);
		return status;
	}
	
	@RequestMapping("/sr")
	public String sr(ModelMap map,@RequestParam String name) 
	{
		drug g = new drug();
		
		g.setName(name);
		
	
		
		
		String status = dservice.Search(g);
		return status;
	}
	
	
	

}
