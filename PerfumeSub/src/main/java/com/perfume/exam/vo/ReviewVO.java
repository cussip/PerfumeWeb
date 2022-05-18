package com.perfume.exam.vo;

import java.util.Date;

public class ReviewVO {

	private int ReviewId;
	private int ProductId;
	private String WriterId;
	private Date RegDate;
	private String Content;
	private double Rating;
	
	public ReviewVO() {
		
	}

	public ReviewVO(int reviewId, int productId, String writerId, Date regDate, String content, 
			double rating) {
		this.ReviewId = reviewId;
		this.ProductId = productId;
		this.WriterId = writerId;
		this.RegDate = regDate;
		this.Content = content;
		this.Rating = rating;
		
	}

	public int getReviewId() {
		return ReviewId;
	}

	public void setReviewId(int reviewId) {
		ReviewId = reviewId;
	}

	public int getProductId() {
		return ProductId;
	}

	public void setProductId(int productId) {
		ProductId = productId;
	}

	public String getWriterId() {
		return WriterId;
	}

	public void setWriterId(String writerId) {
		WriterId = writerId;
	}

	public Date getRegDate() {
		return RegDate;
	}

	public void setRegDate(Date regDate) {
		RegDate = regDate;
	}

	public String getContent() {
		return Content;
	}

	public void setContent(String content) {
		Content = content;
	}

	public double getRating() {
		return Rating;
	}

	public void setRating(double rating) {
		Rating = rating;
	}

	@Override
	public String toString() {
		return "ReviewVO [ReviewId=" + ReviewId + ", ProductId=" + ProductId + ", WriterId=" + WriterId + ", RegDate="
				+ RegDate + ", Content=" + Content + ", Rating=" + Rating + "]";
	}

		
		
		
}
