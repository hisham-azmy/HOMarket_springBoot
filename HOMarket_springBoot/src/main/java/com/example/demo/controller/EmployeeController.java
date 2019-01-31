package com.example.demo.controller;
//package com.jwt.controller;
//
//import java.util.ArrayList;
//import java.util.List;
//
//import javax.persistence.criteria.Order;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpSession;
//import javax.validation.Valid;
//
//import com.jwt.dao.CartDao;
//import com.jwt.model.Cart;
//import com.jwt.model.CartItem;
//import com.jwt.model.Customer;
//import com.jwt.model.Orders;
//import com.jwt.model.Product;
//import com.jwt.service.CartService;
//import com.jwt.service.CustomerService;
//import com.jwt.service.OrderService;
//import com.jwt.service.ProductService;
//
//import org.jboss.logging.Logger;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.security.core.Authentication;
//import org.springframework.security.core.context.SecurityContextHolder;
//import org.springframework.security.core.userdetails.User;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.validation.BindingResult;
//import org.springframework.web.bind.annotation.ModelAttribute;
//import org.springframework.web.bind.annotation.PathVariable;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.web.bind.annotation.RequestParam;
//import org.springframework.web.bind.annotation.ResponseBody;
//import org.springframework.web.servlet.ModelAndView;
//import org.springframework.web.servlet.mvc.support.RedirectAttributes;
//
//@Controller
//public class EmployeeController {
//
//	private static final Logger logger = Logger.getLogger(EmployeeController.class);
//
//	public EmployeeController() {
//		System.out.println("EmployeeController()");
//	}
//
//	@Autowired
//	private CustomerService customerService;
//
//	@Autowired
//	private CartDao cartDao;
//
//	@Autowired
//	private CartService cartService;
//
//	@Autowired
//	private OrderService orderService;
//
//	@Autowired
//	private ProductService productService;
//
//	@RequestMapping(value = "/register", method = RequestMethod.GET)
//	public ModelAndView newContact(ModelAndView model) {
//		Customer customer = new Customer();
//		model.addObject("customer", customer);
//		model.setViewName("registeration");
//		return model;
//	}
//
//	@RequestMapping(value = "/registeration", method = RequestMethod.POST)
//	public String saveEmployee(@Valid @ModelAttribute Customer customer, BindingResult br, Model model) {
//
//		if (br.hasErrors()) {
//			return "registeration";
//		}
//
//		customerService.AddCustomer(customer);
//		return "redirect:/";
//	}
//
//	@RequestMapping(value = "/BASE", method = RequestMethod.GET)
//	public String home() {
//		return "BASE";
//	}
//
//	@RequestMapping(value = "/", method = RequestMethod.GET)
//	public String home2(Model model) {
//		model.addAttribute("title", "Home Page");
//		model.addAttribute("products", productService.getAllProducts());
//		return "home-02";
//	}
//
//	@RequestMapping(value = "/product", method = RequestMethod.GET)
//	public String Products(ModelAndView model, Model models) {
//
//		if (productService.getAllProducts() != null) {
//			models.addAttribute("products", productService.getAllProducts());
//		} else {
//			System.out.println("It's Empty");
//
//		}
//
//		return "product";
//	}
//
//	@RequestMapping(value = "/product", method = RequestMethod.POST)
//	public String Product() {
//
//		return "product";
//	}
//
//	@RequestMapping(value = "/orderDetails/{id}", method = RequestMethod.GET)
//	public String OrderHistoryDetails(Model models, @ModelAttribute("orderss") final Orders orderss,
//			@PathVariable("id") int id) {
//		Orders orders = orderService.getOrderById(id);
//
//		models.addAttribute("orders", orders);
//		return "orderDetails";
//	}
//
//	@RequestMapping(value = "/orderHistory", method = RequestMethod.GET)
//	public String OrderHistory(Model models, @ModelAttribute("orderss") final Orders orderss) {
//
//		List<Orders> orders = orderService.getOrderByCustomer();
//		models.addAttribute("orders", orders);
//		return "orderHistory";
//	}
//
//	@RequestMapping(value = "/order", method = RequestMethod.GET)
//	public String Order(Model models, @ModelAttribute("orderss") final Orders orderss,
//			final RedirectAttributes redirectAttributes) {
//
//		models.addAttribute("order1", orderss);
//		List<CartItem> cartItems = orderss.getCart().getCartItemList();
//		float sum = 0;
//		for (CartItem cartItem : cartItems) {
//			sum = sum + (cartItem.getProduct().getPrice() * cartItem.getQuantity());
//		}
//		models.addAttribute("cartItemss", cartItems);
//		models.addAttribute("sum", sum);
//		cartService.deleteCartItems(cartItems);
//
//		return "order";
//	}
//
//	@RequestMapping(value = "/cart", method = RequestMethod.GET)
//	public String Cart(Model models) {
//
//		Cart carts = cartService.getCartByCustomer();
//		List<CartItem> cartItemes = carts.getCartItemList();
//		List<CartItem> cartItemses = new ArrayList<CartItem>();
//		for (CartItem cartItem : cartItemes) {
//			if (cartItem.isDeleted() == false) {
//				cartItemses.add(cartItem);
//			}
//		}
//		models.addAttribute("cartItemss", cartItemses);
//		return "cart";
//	}
//
//	@RequestMapping(value = "/cart", method = RequestMethod.POST)
//	public String CartPost(@ModelAttribute Cart cart, Model models, @RequestParam("address") String address,
//			final RedirectAttributes redirectAttributes) {
//		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
//		User user = (User) authentication.getPrincipal();
//		Customer customUser = customerService.getCustomerByName(user.getUsername());
//		Cart carts = customUser.getCart();
//
//		List<CartItem> cartItems = carts.getCartItemList();
//		float sum = 0;
//		for (CartItem cartItem : cartItems) {
//			sum = sum + (cartItem.getProduct().getPrice() * cartItem.getQuantity());
//		}
//
//		Orders order = new Orders();
//		order.setAddress(address);
//		order.setCart(carts);
//		order.setCust(customUser);
//		order.setTotalPrice(sum);
//
//		orderService.CreateOrder(order);
//		redirectAttributes.addFlashAttribute("orderss", order);
//		return "redirect:/order";
//	}
//
//	@RequestMapping(value = "/addCartItem", method = RequestMethod.POST)
//	@ResponseBody
//	public Cart CartPostFromAjax(@ModelAttribute Cart cart, Model models, @RequestParam("address") String address) {
//
//		return null;
//	}
//
//	@RequestMapping(value = "/product-detail/{id}", method = RequestMethod.GET)
//	public String ProductDetails(Model model, @PathVariable("id") int id) {
//
//		Product product = productService.getProductById(id);
//		model.addAttribute("product", product);
//		model.addAttribute("maxqtn", product.getQuantity());
//
//		return "product-detail";
//	}
//
//	@RequestMapping(value = "/product-detail/{id}", method = RequestMethod.POST)
//	public String ProductDetailsPost(@PathVariable("id") int id, Model model, @RequestParam("counter") int counter,
//			HttpServletRequest request) {
//
//		cartDao.EditCart(counter, id);
//		return "redirect:/cart";
//	}
//
//	@RequestMapping("/login")
//	public String login() {
//
//		return "login";
//	}
//
//}