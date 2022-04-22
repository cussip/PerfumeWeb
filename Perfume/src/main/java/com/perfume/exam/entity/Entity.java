package com.perfume.exam.entity;

public class Entity {
	
	private int product_id;
	private String name;
	private String brand;
	private int price;
	private String source1;
	private String source2;
	private String source3;
	private String image;
   
	public Entity(){
		
	}

	public Entity(int product_id, String name, String brand, int price, String source1, String source2, String source3,
			String image) {
		super();
		this.product_id = product_id;
		this.name = name;
		this.brand = brand;
		this.price = price;
		this.source1 = source1;
		this.source2 = source2;
		this.source3 = source3;
		this.image = image;
	}

	public int getProduct_id() {
		return product_id;
	}

	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getBrand() {
		return brand;
	}

	public void setBrand(String brand) {
		this.brand = brand;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getSource1() {
		return source1;
	}

	public void setSource1(String source1) {
		this.source1 = source1;
	}

	public String getSource2() {
		return source2;
	}

	public void setSource2(String source2) {
		this.source2 = source2;
	}

	public String getSource3() {
		return source3;
	}

	public void setSource3(String source3) {
		this.source3 = source3;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}
	
	
}
