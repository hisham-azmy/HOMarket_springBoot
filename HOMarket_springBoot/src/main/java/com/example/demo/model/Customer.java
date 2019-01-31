package com.example.demo.model;

import java.util.List;

import javax.persistence.*;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

@Entity
public class Customer {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@Size(min = 3, max = 8, message = "Name must be between 3 an 8")
	private String name;
	// @Size(min = 3, max = 8, message = "email must be between 3 an 8")
	@NotEmpty(message = "shouldnt be empty")
	@Email(message = "should have form of email ")
	private String email;
	private String country;
	@Size(min = 3, max = 8, message = "password must be between 3 an 8")
	private String password;
	private boolean enabled;

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

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	// =============================================================================\\
	/* Mapping */
	// =============================================================================\\

	public boolean isEnabled() {
		return enabled;
	}

	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}

	@OneToOne(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
	private Cart cart;

	@ManyToMany
	@JoinTable
	private List<Role> roles;

	@OneToMany(mappedBy = "cust", cascade = CascadeType.ALL)
	private List<Orders> order;

	public Cart getCart() {
		return cart;
	}

	public void setCart(Cart cart) {
		this.cart = cart;
	}

	public List<Role> getRoles() {
		return roles;
	}

	public void setRoles(List<Role> roles) {
		this.roles = roles;
	}

}
