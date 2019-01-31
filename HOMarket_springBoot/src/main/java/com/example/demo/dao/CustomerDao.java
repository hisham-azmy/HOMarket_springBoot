package com.example.demo.dao;

import java.util.List;

import com.example.demo.model.Customer;

public interface CustomerDao {

    public void AddCustomer(Customer cust);

    public void updateCustomer(Customer cust);

    public void deleteCustomer(int id);

    public List<Customer> getAllCustomers();

    public Customer getCustomerById(int custId);

	public Customer getCustomerByName(String custName);



}
