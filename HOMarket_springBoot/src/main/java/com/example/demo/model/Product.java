package com.example.demo.model;

import javax.persistence.*;
import javax.validation.constraints.Min;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

@Entity
public class Product {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)

	private int id;

	@NotEmpty(message = "Must be not empty")
	private String name;

	@NotEmpty(message = "Must be not empty")
	private String description;
	@Min(value = 5)
	private float price;

	@Min(value = 5)
	private int quantity;

	private boolean inStock;

	@ElementCollection(fetch = FetchType.LAZY)
	private List<Integer> selectedCheckBox;

	@Transient
	private MultipartFile productImage;

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

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public float getPrice() {
		return price;
	}

	public void setPrice(float price) {
		this.price = price;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public boolean isInStock() {
		return inStock;
	}

	public void setInStock(boolean inStock) {
		this.inStock = inStock;
	}

	// =============================================================================\\
	/* Mapping */
	// =============================================================================\\

	public List<Integer> getSelectedCheckBox() {
		return selectedCheckBox;
	}

	public void setSelectedCheckBox(List<Integer> selectedCheckBox) {
		this.selectedCheckBox = selectedCheckBox;
	}

	@ManyToMany(cascade = CascadeType.ALL)
	@JoinTable(name = "prod_cat", joinColumns = { @JoinColumn(name = "product_id") }, inverseJoinColumns = {
			@JoinColumn(name = "category_id") })
	private List<Category> categories;

	public List<Category> getCategories() {
		return categories;
	}

	public void setCategories(List<Category> categories) {
		this.categories = categories;
	}

	public MultipartFile getProductImage() {
		return productImage;
	}

	public void setProductImage(MultipartFile productImage) {
		this.productImage = productImage;
	}

	@OneToMany(fetch = FetchType.EAGER, mappedBy = "product")
	private List<CartItem> cartItemList;

	public List<CartItem> getCartItemList() {
		return cartItemList;
	}

	public void setCartItemList(List<CartItem> cartItemList) {
		this.cartItemList = cartItemList;
	}

}
