package com.perfume.exam.vo;

import java.util.Date;

public class ReviewVO {
	private int ReviewId;
	private int ProductId;
	private String WriterId;
	private Date RegDate;
	private String Content;
	

	public int getReviewId() {
		return ReviewId;
	}
	public void setReviewId(int reviewId) {
		this.ReviewId = reviewId;
	}
	public int getProductId() {
		return ProductId;
	}
	public void setProductId(int productId) {
		this.ProductId = productId;
	}
	public String getWriterId() {
		return WriterId;
	}
	public void setWriterId(String writerId) {
		this.WriterId = writerId;
	}
	public Date getRegDate() {
		return RegDate;
	}
	public void setRegDate(Date regDate) {
		this.RegDate = regDate;
	}
	public String getContent() {
		return Content;
	}
	public void setContent(String content) {
		this.Content = content;
	}
	
	@Override
	public String toString() {
		return "ReviewVO [ReviewId=" + ReviewId + ", ProductId=" + ProductId + ", WriterId=" + WriterId + ", RegDate="
				+ RegDate + ", Content=" + Content + "]";
	}
	
			
}
