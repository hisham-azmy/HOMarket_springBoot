package com.example.demo.dao;

import java.util.List;

import com.example.demo.model.Customer;
import com.example.demo.model.Orders;

public interface OrderDao {

	public void CreateOrder(Orders order);

	public void editOrder(Orders order);

	public void deleteOrder(Orders order);

	public List<Orders> getOrderByCustomer();

}
