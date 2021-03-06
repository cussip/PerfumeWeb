package com.perfume.exam.service;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.perfume.exam.entity.Board;
import com.perfume.exam.entity.Event;

@Service
public class EventService {

	@Autowired
	private DataSource dataSource;
	
	public List<Event> getEndList() throws ClassNotFoundException, SQLException {
		
		String sql = " SELECT * FROM event "
				+ " WHERE to_char(end_date) < to_char(sysdate) ";
		
		Connection con = dataSource.getConnection();
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery(sql);
		
		List<Event> endList = new ArrayList<>();
		
		while(rs.next()) {
			int event_id = rs.getInt("event_id");
			Date start_date = rs.getDate("start_date");
			Date end_date = rs.getDate("end_date");
			String title = rs.getString("title");
			Date regdate = rs.getDate("regdate");
			int hit = rs.getInt("hit");
			String writer_id = rs.getString("writer_id");
			String img_mini = rs.getString("img_mini");
			String img_main = rs.getString("img_main");	
			
			Event event = new Event(
						event_id,
						start_date,
						end_date,
						title,
						regdate,
						hit,
						writer_id,
						img_mini,
						img_main
					);
			endList.add(event);	
		}
		
		rs.close();
		st.close();
		con.close();
		
		return endList;	
	}
	
	
	public List<Event> getIngList() throws ClassNotFoundException, SQLException {
		
		String sql = " SELECT * FROM event "
				+ " WHERE to_char(end_date) >= to_char(sysdate) ";
		
		Connection con = dataSource.getConnection();
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery(sql);
		
		List<Event> ingList = new ArrayList<>();
		
		while(rs.next()) {
			int event_id = rs.getInt("event_id");
			Date start_date = rs.getDate("start_date");
			Date end_date = rs.getDate("end_date");
			String title = rs.getString("title");
			Date regdate = rs.getDate("regdate");
			int hit = rs.getInt("hit");
			String writer_id = rs.getString("writer_id");
			String img_mini = rs.getString("img_mini");
			String img_main = rs.getString("img_main");	
			
			Event event = new Event(
						event_id,
						start_date,
						end_date,
						title,
						regdate,
						hit,
						writer_id,
						img_mini,
						img_main
					);
			ingList.add(event);	
		}
		
		rs.close();
		st.close();
		con.close();
		
		return ingList;	
	}
	
	public List<Board> getWinnerList() throws ClassNotFoundException, SQLException {
		
		String sql = " SELECT * FROM board "
				+ " WHERE category = 'event' ";
		
		Connection con = dataSource.getConnection();
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery(sql);
		
		List<Board> winnerList = new ArrayList<>();
		
		while(rs.next()) {
			int notice_id = rs.getInt("notice_id");
			int writer_id = rs.getInt("writer_id");
			String title = rs.getString("title");
			String content = rs.getString("content");
			Date regdate = rs.getDate("regdate");
			String category = rs.getString("category");
			
			Board board = new Board(
						notice_id,
						writer_id,
						title,
						content,
						regdate,
						category
					);
			winnerList.add(board);	
		}
		
		rs.close();
		st.close();
		con.close();
		
		return winnerList;	
		
	}

	public Event getEvent(String page) throws SQLException {
		
		Event event = null;
		
		String sql = " SELECT * FROM event WHERE event_id=? ";
		
		Connection con = dataSource.getConnection();
		PreparedStatement st = con.prepareStatement(sql);
		
		st.setString(1, page);
		
		ResultSet rs = st.executeQuery();
		
		if(rs.next()) {
			int event_id = rs.getInt("event_id");
			Date start_date = rs.getDate("start_date");
			Date end_date = rs.getDate("end_date");
			String title = rs.getString("title");
			Date regdate = rs.getDate("regdate");
			int hit = rs.getInt("hit");
			String writer_id = rs.getString("writer_id");
			String img_mini = rs.getString("img_mini");
			String img_main = rs.getString("img_main");	
			
			event = new Event(
						event_id,
						start_date,
						end_date,
						title,
						regdate,
						hit,
						writer_id,
						img_mini,
						img_main
					);
			
		}
		
		rs.close();
		st.close();
		con.close();
		
		return event;
	}
}






