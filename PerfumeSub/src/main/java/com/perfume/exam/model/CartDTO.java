package com.perfume.exam.model;

public class CartDTO {
	
	//cart table
	private int cart_id;
	private String id;
	private int product_id;
	private int product_count;
	
	//product table
	private String image;
	private String name;	
	private int price;
	private int totalPrice;
	
	
	public int getCart_id() {
		return cart_id;
	}


	public void setCart_id(int cart_id) {
		this.cart_id = cart_id;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public int getProduct_id() {
		return product_id;
	}

	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}

	public int getProduct_count() {
		return product_count;
	}

	public void setProduct_count(int product_count) {
		this.product_count = product_count;
	}


	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getTotalPrice() {
		return totalPrice;
	}


	public void initSaleTotal() {
		
		this.totalPrice = this.price*this.product_count;
	}


	@Override
	public String toString() {
		return "CartDTO [cart_id=" + cart_id + ", id=" + id + ", product_id=" + product_id + ", product_count="
				+ product_count + ", image=" + image + ", name=" + name + ", price=" + price + ", totalPrice="
				+ totalPrice + "]";
	}


	
}
