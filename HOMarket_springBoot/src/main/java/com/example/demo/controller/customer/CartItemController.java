package com.example.demo.controller.customer;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.model.Cart;
import com.example.demo.model.CartItem;
import com.example.demo.model.CustomCartItem;
import com.example.demo.service.CartService;
import com.example.demo.service.ProductService;

@Controller
@RequestMapping(value = "/customer/cartItem")
public class CartItemController {

	@Autowired
	private CartService cartService;

	// @Autowired
	// private ProductService productService;

	@RequestMapping(method = RequestMethod.POST)
	public String ProductDetailsPost(Model model, @RequestParam("counter") int counter,
			@RequestParam("productId") String id, HttpServletRequest request) {

		cartService.EditCart(counter, Integer.parseInt(id));
		return "redirect:/customer/cart";
	}

	@ResponseBody
	@RequestMapping(value = "/ajax/add", method = RequestMethod.GET)
	public List<CustomCartItem> CartPostFromAjax(Model model, @RequestParam("id") int id) {

		List<CustomCartItem> customCartItem = new ArrayList<CustomCartItem>();
		

		cartService.EditCart(1, id);

		List<CartItem> CartItems = cartService.getCartByCustomer().getCartItemList();
		for (CartItem cartItem : CartItems) {
			if (cartItem.isDeleted() == false) {
				customCartItem.add(new CustomCartItem(cartItem.getProduct().getName(),
						cartItem.getQuantity() * cartItem.getProduct().getPrice()));
			}
		}

		return customCartItem;

	}
}
