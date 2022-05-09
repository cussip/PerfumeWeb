package com.perfume.exam.vo;

public class MyWishVO {

	private int WishId;
	private String Name;
	private int Price;
	private String Image;
	
	public MyWishVO() {
		
	}
					
	public MyWishVO(int wishId, String name, int price, String image) {
		super();
		WishId = wishId;
		Name 	= name;
		Price	= price;
		Image	= image;
	}

	public int getWishId() {
		return WishId;
	}

	public void setWishId(int wishId) {
		WishId = wishId;
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
		return "MyWishVO [WishId=" + WishId + ", Name=" + Name + ", Price=" + Price + ", Image=" + Image + "]";
	}
	
					
}

