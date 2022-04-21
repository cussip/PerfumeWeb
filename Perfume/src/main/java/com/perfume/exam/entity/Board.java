package com.perfume.exam.entity;

import java.sql.Date;

public class Board {
	
	int notice_id;
	int writer_id;
	String title;
	String content;
	Date regdate;
	String category;
	
	public Board() {
	}
	
	public Board(int notice_id, int writer_id, String title, String content, Date regdate, String category) {
		this.notice_id = notice_id;
		this.writer_id = writer_id;
		this.title = title;
		this.content = content;
		this.regdate = regdate;
		this.category = category;
	}
	
	public int getNotice_id() {
		return notice_id;
	}
	public void setNotice_id(int notice_id) {
		this.notice_id = notice_id;
	}
	public int getWriter_id() {
		return writer_id;
	}
	public void setWriter_id(int writer_id) {
		this.writer_id = writer_id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}	
}
