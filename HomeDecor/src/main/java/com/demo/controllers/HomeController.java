package com.demo.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HomeController {
	@RequestMapping("/")
	public String homepage()
	{
		return "home";
	}
	@RequestMapping("/HOME")
	public String home()
	{
		return "home";
	}
	/*@RequestMapping("/CONTACT")
	public String Contactus()
	{
		return "contact";
	}*/
	/*@RequestMapping("/PRODUCTS")
	public String database()
	{
	return "Producttable";
	}*/
	@RequestMapping("/View")
	public String vmore()
	{
	return "Viewmore";
	}



	
	@RequestMapping("/login") 
	public String login( 
			@RequestParam(value="error", required = false) 
            String error, 
            @RequestParam(value="logout", required = false) 
            String logout, Model model){ 
 
		if(error != null){ model.addAttribute("error", "Invalid username and password"); 
        } 
 
		if (logout !=null){ model.addAttribute("msg", "You have been logged out successfully"); 
        } 
 
		return "NewLoginForm"; 
		} 
	
}	
