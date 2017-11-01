package com.demo.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import com.demo.model.Customer;
import com.demo.service.CustomerService;

@Controller
public class CustomerController {
	@Autowired
	private CustomerService customerService;
		
	/*@RequestMapping("/signup")
	public String signUp(){
		return "Signupform";
		}
	
	@ModelAttribute("customer")
	public Customer createCustomer(){
		Customer customer = new Customer();
		Users users = new Users();
		Authorities authority = new Authorities();
		BillingAddress billingAddress = new BillingAddress();
		ShippingAddress shippingAddress= new ShippingAddress();
		customer.setAuthority(authority);
		customer.setUsers(users);
		customer.setBillingAddress(billingAddress);
		customer.setShippingAddress(shippingAddress);
		return customer;
		
	}
	
	@RequestMapping("/signup")
	public String registerCustomer(Model model){
		Customer customer = new Customer();
		Users users = new Users();
		Authorities authority = new Authorities();
		BillingAddress billingAddress = new BillingAddress();
		ShippingAddress shippingAddress= new ShippingAddress();
		customer.setUsers(users);
	   customer.setAuthority(authority);
		customer.setBillingAddress(billingAddress);
		customer.setShippingAddress(shippingAddress);
		model.addAttribute("customer", customer);
		return "Signupform";
	}
	
	@RequestMapping(value= "/registerCustomer", method=RequestMethod.POST)
	public String registerCustomerPost(@ModelAttribute("customer") Customer customer, BindingResult result, Model model){
	if(result.hasErrors()){
		return "Signupform";
			}
	customer.getAuthority().setRole("ROLE_USER");
	customer.getUsers().setEnabled(true);
	customerService.saveCustomer(customer);
	return "registerConfirmed";
	
	}
	
}*/
	
	@RequestMapping("/signup")
	public String getRegistrationForm(Model model){
		model.addAttribute("customer",new Customer());
		//model.addAttribute("customers", customerService.getCustomers());
		return "signUpForm";

	}
	@ModelAttribute("customer")
	public Customer newCustomer() {
	
		return new Customer();

	}
	//we use  @modelattribute(command name) to read the values that user has entered in the jsp page.
	@RequestMapping("/registerCustomer")
	public String addCustomer(@Valid @ModelAttribute("customer") Customer customer, BindingResult result, Model model) {
		List<Customer> customerList = customerService.getAllCustomers();
		for (int i=0; i< customerList.size(); i++){
            if(customer.getEmail().equals(customerList.get(i).getEmail())){
                model.addAttribute("emailMsg", "Email already exists");

                return "signUpForm";
            }

            if(customer.getUsername().equals(customerList.get(i).getUsername())){
                model.addAttribute("usernameMsg", "Username already exists");

                return "signUpForm";
            }
        }
		customerService.saveOrUpdateCustomer(customer);
		return "registerCustomerSuccess";
	}
	
}



