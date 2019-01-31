package com.example.demo.dao;

import java.util.List;

import com.example.demo.model.Cart;
import com.example.demo.model.CartItem;

public interface CartDao {

	public void AddCartItem(CartItem cartItem);

	public void EditCart(int counter, int id);

	public void deleteCartItems(List<CartItem> cartItemses);

	public List<Cart> getAllCarts();

	public Cart getCartByCustomer();

}
