package com.example.demo.controller.customer;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.demo.model.Cart;
import com.example.demo.model.CartItem;
import com.example.demo.model.Customer;
import com.example.demo.model.Orders;
import com.example.demo.service.CartService;
import com.example.demo.service.CustomerService;
import com.example.demo.service.OrderService;

@Controller
@RequestMapping(value = "/customer/cart")
public class CartController {
	
	@Autowired
	private CustomerService customerService;
	
	@Autowired
	private CartService cartService;
	
	@Autowired
	private OrderService orderService;
	
	@RequestMapping(method = RequestMethod.GET)
	public String Cart(Model models) {

		Cart carts = cartService.getCartByCustomer();
		List<CartItem> cartItemes = carts.getCartItemList();
		List<CartItem> cartItemses = new ArrayList<CartItem>();
		for (CartItem cartItem : cartItemes) {
			if (cartItem.isDeleted() == false) {
				cartItemses.add(cartItem);
			}
		}
		models.addAttribute("cartItemss", cartItemses);
		return "cart";
	}
	
	@RequestMapping(value = "/checkout", method = RequestMethod.POST)
	public String CartPost(@ModelAttribute Cart cart, Model models, @RequestParam("address") String address,
			final RedirectAttributes redirectAttributes) {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		User user = (User) authentication.getPrincipal();
		Customer customUser = customerService.getCustomerByName(user.getUsername());
		Cart carts = customUser.getCart();

		List<CartItem> cartItems = carts.getCartItemList();
		float sum = 0;
		for (CartItem cartItem : cartItems) {
			sum = sum + (cartItem.getProduct().getPrice() * cartItem.getQuantity());
		}

		Orders order = new Orders();
		order.setAddress(address);
		order.setCart(carts);
		order.setCust(customUser);
		order.setTotalPrice(sum);

		orderService.CreateOrder(order);
		redirectAttributes.addFlashAttribute("orderss", order);
		return "redirect:/customer/order";
	}
	
}
