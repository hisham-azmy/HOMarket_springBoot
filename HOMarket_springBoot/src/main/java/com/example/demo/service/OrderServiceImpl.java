package com.example.demo.service;

import com.example.demo.dao.OrderDao;
import com.example.demo.model.Customer;
import com.example.demo.model.Orders;
import com.example.demo.model.Product;

import java.util.Date;
import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class OrderServiceImpl implements OrderService {

	@Autowired
	private SessionFactory sessionFactory;

	@Autowired
	private OrderDao orderDao;

	@Override
	public void CreateOrder(Orders order) {
		order.setDate(new Date());
		orderDao.CreateOrder(order);

	}

	@Override
	public void editOrder(Orders order) {
		orderDao.editOrder(order);
	}

	@Override
	public void deleteOrder(Orders order) {

		orderDao.deleteOrder(order);
	}

	@Override
	public List<Orders> getOrderByCustomer() {
		return orderDao.getOrderByCustomer();

	}

	@Override
	public Orders getOrderById(int id) {

		return (Orders) sessionFactory.getCurrentSession().get(Orders.class, id);
	}

}
