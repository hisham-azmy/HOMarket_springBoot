package com.example.demo.controller.customer;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.demo.model.CartItem;
import com.example.demo.model.Orders;
import com.example.demo.service.CartService;
import com.example.demo.service.OrderService;

@Controller
@RequestMapping(value = "/customer/order")
public class OrederController {
	
	@Autowired
	private CartService cartService;

	@Autowired
	private OrderService orderService;
	
	@RequestMapping(value = "/history", method = RequestMethod.GET)
	public String OrderHistory(Model models, @ModelAttribute("orderss") final Orders orderss) {

		List<Orders> orders = orderService.getOrderByCustomer();
		models.addAttribute("orders", orders);
		return "orderHistory";
	}
	
	@RequestMapping(method = RequestMethod.GET)
	public String Order(Model models, @ModelAttribute("orderss") final Orders orderss,
			final RedirectAttributes redirectAttributes) {

		models.addAttribute("order1", orderss);
		List<CartItem> cartItems = orderss.getCart().getCartItemList();
		float sum = 0;
		for (CartItem cartItem : cartItems) {
			sum = sum + (cartItem.getProduct().getPrice() * cartItem.getQuantity());
		}
		models.addAttribute("cartItemss", cartItems);
		models.addAttribute("sum", sum);
		cartService.deleteCartItems(cartItems);

		return "order";
	}
	
	@RequestMapping(value = "/details/{id}", method = RequestMethod.GET)
	public String OrderHistoryDetails(Model models, @ModelAttribute("orderss") final Orders orderss,
			@PathVariable("id") int id) {
		Orders orders = orderService.getOrderById(id);

		models.addAttribute("orders", orders);
		return "orderDetails";
	}

}
