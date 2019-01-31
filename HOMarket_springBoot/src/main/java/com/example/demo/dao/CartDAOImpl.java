package com.example.demo.dao;

import com.example.demo.model.Cart;
import com.example.demo.model.CartItem;
import com.example.demo.model.Customer;
import com.example.demo.model.Product;
import com.example.demo.service.CustomerService;
import com.example.demo.service.ProductService;

import org.springframework.transaction.annotation.Transactional;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Repository;

@Repository
@Transactional
public class CartDAOImpl implements CartDao {

	@Autowired
	private ProductService productService;
	@Autowired
	private CustomerService customerService;
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void AddCartItem(CartItem cartItem) {

		sessionFactory.getCurrentSession().save(cartItem);

	}

	@Override
	public void EditCart(int counter, int id) {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		User user = (User) authentication.getPrincipal();
		Customer customUser = customerService.getCustomerByName(user.getUsername());
		Cart cart = customUser.getCart();
		Product product = productService.getProductById(id);
		CartItem newcartItem = new CartItem();

		List<CartItem> cartItems = cart.getCartItemList();
		boolean notExists = true;
		for (CartItem cartItem : cartItems) {
			if (!cartItem.isDeleted()) {
				if (cartItem.getProduct().getId() == product.getId()) {
					cartItem.setQuantity(cartItem.getQuantity() + counter);
					product.setQuantity(product.getQuantity() - counter);
					cartItem.setProduct(product);
					notExists = false;
					break;
				} else {
					notExists = true;
				}
			}
		}

		if (notExists) {
			newcartItem.setProduct(product);
			newcartItem.setQuantity(counter);
			newcartItem.getProduct().setQuantity(product.getQuantity() - counter);
			newcartItem.setDeleted(false);
			cart.getCartItemList().add(newcartItem);
			newcartItem.setCart(cart);
			System.out.println("inside of  loop of cartItem");
		}

		sessionFactory.getCurrentSession().saveOrUpdate(cart);

	}

	@Override
	public List<Cart> getAllCarts() {

		Query q = sessionFactory.getCurrentSession().createQuery("from Cart");
		List<Cart> carts = (List<Cart>) q.list();

		return carts;
	}

	@Override
	public void deleteCartItems(List<CartItem> cartItemses) {
		for (CartItem cartItem2 : cartItemses) {
			cartItem2.setDeleted(true);
			sessionFactory.getCurrentSession().update(cartItem2);
			// sessionFactory.getCurrentSession().delete(cartItem2);
			sessionFactory.getCurrentSession().flush();
		}
	}

	@Override
	public Cart getCartByCustomer() {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		User user = (User) authentication.getPrincipal();
		Customer customUser = customerService.getCustomerByName(user.getUsername());
		Cart carts = customUser.getCart();
		return carts;
	}

}