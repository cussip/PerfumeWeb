package com.perfume.exam.vo;

public class MyWishVO {

	private int Wish_ID;
	private String Name;
	private int Price;
	private String Image;
	
	public MyWishVO() {
		
	}
					
	public MyWishVO(int wish_id, String name, int price, String image) {
		super();
		Wish_ID = wish_id;
		Name 	= name;
		Price	= price;
		Image	= image;
	}

	public int getWish_ID() {
		return Wish_ID;
	}

	public void setWish_ID(int wish_id) {
		Wish_ID = wish_id;
	}

	public String getName() {
		return Name;
	}

	public void setName(String name) {
		Name = name;
	}

	public int getPrice() {
		return Price;
	}

	public void setPrice(int price) {
		Price = price;
	}

	public String getImage() {
		return Image;
	}

	public void setImage(String image) {
		Image = image;
	}

	@Override
	public String toString() {
		return "MyWishVO [Wish_ID=" + Wish_ID + ", Name=" + Name + ", Price=" + Price + ", Image=" + Image + "]";
	}
	
					
}

