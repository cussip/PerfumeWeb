package com.perfume.exam.vo;

public class PerfumeVO {
	
	private int Product_id;
	private String Name;
	private String Brand;
	private int Price;
	private String Source1;
	private String Source2;
	private String Source3;
	private String Image;
   
	public PerfumeVO(){
		
	}

	public PerfumeVO(int product_id, String name, String brand, int price, String source1, String source2,
			String source3, String image) {
		super();
		Product_id = product_id;
		Name = name;
		Brand = brand;
		Price = price;
		Source1 = source1;
		Source2 = source2;
		Source3 = source3;
		Image = image;
	}

	public int getProduct_id() {
		return Product_id;
	}

	public void setProduct_id(int product_id) {
		Product_id = product_id;
	}

	public String getName() {
		return Name;
	}

	public void setName(String name) {
		Name = name;
	}

	public String getBrand() {
		return Brand;
	}

	public void setBrand(String brand) {
		Brand = brand;
	}

	public int getPrice() {
		return Price;
	}

	public void setPrice(int price) {
		Price = price;
	}

	public String getSource1() {
		return Source1;
	}

	public void setSource1(String source1) {
		Source1 = source1;
	}

	public String getSource2() {
		return Source2;
	}

	public void setSource2(String source2) {
		Source2 = source2;
	}

	public String getSource3() {
		return Source3;
	}

	public void setSource3(String source3) {
		Source3 = source3;
	}

	public String getImage() {
		return Image;
	}

	public void setImage(String image) {
		Image = image;
	}

	@Override
	public String toString() {
		return "PerfumeVO [Product_id=" + Product_id + ", Name=" + Name + ", Brand=" + Brand + ", Price=" + Price
				+ ", Source1=" + Source1 + ", Source2=" + Source2 + ", Source3=" + Source3 + ", Image=" + Image + "]";
	}

	
	
}
