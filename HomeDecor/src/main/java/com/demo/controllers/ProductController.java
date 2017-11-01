package com.demo.controllers;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.demo.model.Product;
import com.demo.service.ProductService;

@Controller
/* @RequestMapping("/admin") */
public class ProductController {
	@Autowired
	private ProductService productService;
	
    @Autowired
	private JavaMailSender mailSender;
    
	/*@Autowired
	private CategoryService categoryService;
	@Autowired
	private SupplierService supplierService;

	// display form
	// http://localhost:9002/HomeDecor/admin/productform
	@RequestMapping("/addProduct")
	public String getProductForm(Model model) {
		// Product product = new Product();
		model.addAttribute("product", new Product());
		model.addAttribute("categories", categoryService.getCategories());
		model.addAttribute("suppliers", supplierService.getAllSuppliers());
		return "productform";
	}

	@ModelAttribute("productcommand")
	public Product newProduct() {
		
		 * Product newProduct=productService.saveProduct(); /NOT A FINAL
		 * VERSION..
		 
		return new Product();

	}

	@RequestMapping("/addNewProduct")
	public String addProduct(@Valid @ModelAttribute("productcommand") Product product, BindingResult result,
			HttpServletRequest request) {
		if (result.hasErrors())
			return "productform";
		productService.saveOrUpdateProduct(product);
		MultipartFile prodImage = product.getImage();
		if (!prodImage.isEmpty()) {
			Path paths = Paths.get("C:/Users/Admin/git/HOUSEtoHOME/HomeDecor/src/main/webapp/WEB-INF/resources/Images/"
					+ product.getId() + ".jpg");
			try {
				prodImage.transferTo(new File(paths.toString()));
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return "redirect:/prodlist";

	}*/

	@RequestMapping("/prodlist")
	public String getAllProducts(Model model) {
		List<Product> products = productService.getAllProducts();
		// Assigning list of products to model attribute products
		model.addAttribute("productList", products);
		return "productlist";
	}

	@RequestMapping("/viewproduct/{id}")
	public String viewProduct(@PathVariable int id, Model model) {
		Product product = productService.getProductById(id);
		model.addAttribute("product", product);
		return "viewproduct";
	}

	 @RequestMapping("/favorite/{id}")
	    public String viewSendMailPage(@PathVariable int id, Model model) throws IOException{
	    	Product product = productService.getProductById(id);
	        model.addAttribute("product", product);

	        return "sendMail";
	    }
	    @RequestMapping(value="/sendEmail", method=RequestMethod.POST)
	    public String sendMail(HttpServletRequest request)
	    {
	    	try
			{
			String recipientAddress = request.getParameter("recipient");
			String subject = request.getParameter("subject");
			String message = request.getParameter("message");
			
			// prints debug info
			System.out.println("To: " + recipientAddress);
			System.out.println("Subject: " + subject);
			System.out.println("Message: " + message);
			
			// creates a simple e-mail object
			SimpleMailMessage email = new SimpleMailMessage();
			email.setTo(recipientAddress);
			email.setSubject(subject);
			email.setText(message);
			
			// sends the e-mail
			mailSender.send(email);
			
			
			}
			catch(Exception ex)
			{
				System.out.println("Exception = "+ex);
			}
			return "Success";
	    }

	/*@RequestMapping("/deleteproduct/{id}")
	public String deleteProduct(@PathVariable int id) {
		productService.deleteProduct(id);
		return "redirect:/prodlist";
	}

	@RequestMapping("/editform/{id}")
	public String editProductForm(@PathVariable int id, Model model) {
		model.addAttribute("product1", productService.getProductById(id));
		System.out.println("Product id:" +id);
		model.addAttribute("categories", categoryService.getCategories());
		model.addAttribute("suppliers", supplierService.getAllSuppliers());
		return "editproductform";
	}

	@RequestMapping("/editProduct/{id}")
	public String editProductDetails(@Valid @ModelAttribute("product1") Product product, BindingResult result,
			HttpServletRequest request) {
			System.out.println("product id in dusra method is:" +product.getId());
		if (result.hasErrors())
			return "editproductform";
		MultipartFile prodImage = product.getImage();
		if (!prodImage.isEmpty()) {
			Path paths = Paths.get("C:/Users/Admin/git/HOUSEtoHOME/HomeDecor/src/main/webapp/WEB-INF/resources/Images/"
					+ product.getId() + ".jpg");
			try {
				prodImage.transferTo(new File(paths.toString()));
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		
		productService.editProduct(product);
		return "redirect:/prodlist";
	}
*/
}
