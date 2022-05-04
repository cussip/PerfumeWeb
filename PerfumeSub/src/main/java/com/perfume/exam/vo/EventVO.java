package com.perfume.exam.vo;

import java.sql.Date;

public class EventVO {
	
	int event_id;
	Date start_date;
	Date end_date;
	String title;
	Date regdate;
	int hit;
	String writer_id;
	String img_mini;
	String img_main;	
	
	public EventVO() {
		
	}
	
	public EventVO(int event_id, Date start_date, Date end_date, String title, Date regdate, int hit, String writer_id,
			String img_mini, String img_main) {
		this.event_id = event_id;
		this.start_date = start_date;
		this.end_date = end_date;
		this.title = title;
		this.regdate = regdate;
		this.hit = hit;
		this.writer_id = writer_id;
		this.img_mini = img_mini;
		this.img_main = img_main;
	}
	public int getEvent_id() {
		return event_id;
	}
	public void setEvent_id(int event_id) {
		this.event_id = event_id;
	}
	public Date getStart_date() {
		return start_date;
	}
	public void setStart_date(Date start_date) {
		this.start_date = start_date;
	}
	public Date getEnd_date() {
		return end_date;
	}
	public void setEnd_date(Date end_date) {
		this.end_date = end_date;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	public String getWriter_id() {
		return writer_id;
	}
	public void setWriter_id(String writer_id) {
		this.writer_id = writer_id;
	}
	public String getImg_mini() {
		return img_mini;
	}
	public void setImg_mini(String img_mini) {
		this.img_mini = img_mini;
	}
	public String getImg_main() {
		return img_main;
	}
	public void setImg_main(String img_main) {
		this.img_main = img_main;
	}
	
}
