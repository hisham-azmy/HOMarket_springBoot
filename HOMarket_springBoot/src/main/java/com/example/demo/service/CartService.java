package com.example.demo.service;

import java.util.List;

import com.example.demo.model.Cart;
import com.example.demo.model.CartItem;

public interface CartService {

	public void AddCartItem(CartItem cartItem);

	public void EditCart(int count, int id);

	public List<Cart> getAllCarts();

	public void deleteCartItems(List<CartItem> cartItemses);

	public Cart getCartByCustomer();

}
