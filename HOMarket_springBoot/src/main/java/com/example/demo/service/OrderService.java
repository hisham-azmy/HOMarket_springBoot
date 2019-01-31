package com.example.demo.service;

import java.util.List;

import com.example.demo.model.Orders;

public interface OrderService {

	public void CreateOrder(Orders order);

	public void editOrder(Orders order);

	public void deleteOrder(Orders order);

	public List<Orders> getOrderByCustomer();

	public Orders getOrderById(int id);
}
