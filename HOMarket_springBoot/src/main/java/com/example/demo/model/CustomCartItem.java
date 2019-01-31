package com.example.demo.model;

public class CustomCartItem {

	private int id;
	private String name;
	private float totalPrice;


	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public float getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(float totalPrice) {
		this.totalPrice = totalPrice;
	}

	public CustomCartItem(String name, float totalPrice) {
		super();
		this.name = name;
		this.totalPrice = totalPrice;
	}


}
