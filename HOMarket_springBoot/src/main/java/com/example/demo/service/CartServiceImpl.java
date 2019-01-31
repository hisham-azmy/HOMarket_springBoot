package com.example.demo.service;

import com.example.demo.dao.CartDao;
import com.example.demo.model.Cart;
import com.example.demo.model.CartItem;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class CartServiceImpl implements CartService {

	@Autowired
	private CartDao cartDao;

	@Override
	public void AddCartItem(CartItem cartItem) {
		cartDao.AddCartItem(cartItem);
	}

	@Override
	public List<Cart> getAllCarts() {

		return cartDao.getAllCarts();

	}

	@Override
	public void deleteCartItems(List<CartItem> cartItemses) {

		cartDao.deleteCartItems(cartItemses);

	}

	@Override
	public void EditCart(int count, int id) {

		cartDao.EditCart(count, id);

	}

	@Override
	public Cart getCartByCustomer() {
		return cartDao.getCartByCustomer();
	}

}
