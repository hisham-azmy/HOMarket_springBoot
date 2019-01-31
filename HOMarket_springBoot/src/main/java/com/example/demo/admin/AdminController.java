package com.example.demo.admin;

import java.io.File;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.model.Category;
import com.example.demo.model.Product;
import com.example.demo.service.AdminService;
import com.example.demo.service.CategoryService;
import com.example.demo.service.CustomerService;
import com.example.demo.service.ProductService;

@Controller
@RequestMapping(value = "/admin")
public class AdminController {
	private Path path;

	@Autowired
	private ProductService productService;

	@Autowired
	private CategoryService categoryService;

	@Autowired
	private CustomerService customerService;

	@Autowired
	private AdminService adminService;

	@RequestMapping(method = RequestMethod.GET)
	public String adminPage(Model model) {
		model.addAttribute("title", "Admin Page");
		model.addAttribute("products", productService.getAllProducts());

		return "home-02";
	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String adminLogout() {

		return "redirect:/j_spring_security_logout";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String adminLogin(@RequestParam(value = "error", required = false) String error,
			@RequestParam(value = "logout", required = false) String logout, Model model) {
		if (error != null) {
			model.addAttribute("error", "username or password is wrong.");
		}

		if (logout != null) {
			model.addAttribute("msg", "you have to logout.");
		}
		return "adminLogin";
	}

	@RequestMapping(value = "/productInventory", method = RequestMethod.GET)
	public String productInventory(Model model) {
		model.addAttribute("products", productService.getAllProducts());

		return "product";
	}

	@RequestMapping(value = "/product/create", method = RequestMethod.GET)
	public String createProduct(Model model) {
		model.addAttribute("title", "New Product");
		model.addAttribute("headerMSG", "create a new Product");
		model.addAttribute("product", new Product());
		model.addAttribute("categories", categoryService.getAllCategories());
		return "newProduct";
	}

	@RequestMapping(value = "/product/add", method = RequestMethod.POST)
	public String addProduct(@Valid @ModelAttribute Product product, BindingResult br, HttpServletRequest req) {
		if (br.hasErrors()) {
			return "newProduct";
		}

		adminService.updateProduct(product.getSelectedCheckBox(), product);
		// image configuration
		MultipartFile productImage = product.getProductImage();
		String rootDir = req.getSession().getServletContext().getRealPath("/");
		path = Paths.get(rootDir + "\\WEB-INF\\resources\\img\\" + product.getId() + ".png");
		String destinatino = path.toString();
		if (productImage != null && !productImage.isEmpty()) {
			try {
				System.out.println("Path is  : " + destinatino);
				productImage.transferTo(new File(destinatino));
				System.out.println("Name is :" + productImage.getName());
			} catch (Exception e) {
				throw new RuntimeException("saving file is failed", e);
			}
		}

		return "redirect:/product/all";
	}

	@RequestMapping(value = "/product/delete/{id}", method = RequestMethod.GET)
	public String deleteProduct(Model model, @PathVariable("id") int id) {
		productService.deleteProduct(id);

		return "redirect:/product/all";
	}

	@RequestMapping(value = "/product/edit/{id}", method = RequestMethod.GET)
	public String editProduct(Model model, @PathVariable("id") int id) {
		Product product = productService.getProductById(id);

		model.addAttribute("categories", categoryService.getAllCategories());
		model.addAttribute("title", "Edit Product");
		model.addAttribute("headerMSG", "Edit the Product");
		model.addAttribute("product", product);

		return "newProduct";
	}

	@RequestMapping(value = "/product/edit", method = RequestMethod.POST)
	public String editProduct(@Valid @ModelAttribute Product product, BindingResult br, HttpServletRequest req) {
		if (br.hasErrors()) {
			return "newProduct";
		}

		adminService.updateProduct(product.getSelectedCheckBox(), product);
		// productService.updateProduct(product);

		MultipartFile productImage = product.getProductImage();
		String rootDir = req.getSession().getServletContext().getRealPath("/");
		path = Paths.get(rootDir + "\\WEB-INF\\resources\\img\\" + product.getId() + ".png");
		String destinatino = path.toString();
		if (productImage != null && !productImage.isEmpty()) {
			try {
				System.out.println("Path is  : " + destinatino);
				productImage.transferTo(new File(destinatino));
				System.out.println("Name is :" + productImage.getName());
			} catch (Exception e) {
				throw new RuntimeException("saving file is failed", e);
			}
		}
		return "redirect:/product/all";
	}

	@RequestMapping(value = "/customers", method = RequestMethod.GET)
	public String customerManagement(Model model) {
		model.addAttribute("customers", customerService.getAllCustomers());
		return "customers";
	}

}
