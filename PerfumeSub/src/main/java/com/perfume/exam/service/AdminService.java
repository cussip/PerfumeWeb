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

@Service
public class AdminService {
	
	@Autowired
	private DataSource dataSource;
	
	public List<Board> getNoticeList() throws ClassNotFoundException, SQLException {
		
		String sql = " SELECT * FROM board "
				+ " WHERE category = 'notice' ";
		
		Connection con = dataSource.getConnection();
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery(sql);
		
		List<Board> noticeList = new ArrayList<>();
		
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
			noticeList.add(board);	
		}
		
		rs.close();
		st.close();
		con.close();
		
		return noticeList;		
	}

	
	public void bwsubmit(Board board) throws SQLException {
		
		String title = board.getTitle();
		String content = board.getContent();
		
		String sql = " INSERT INTO board VALUES ( "
				+ "        board_seq.nextval, "
				+ "        0, "
				+ "        ?, "
				+ "        ?, "
				+ "        sysdate, "
				+ "        'notice'"
				+ "        ) ";
		
		Connection con = dataSource.getConnection();
		PreparedStatement st = con.prepareStatement(sql);
		
		st.setString(1, title);
		st.setString(2, content);
		
		ResultSet rs = st.executeQuery();
		
		rs.close();
		st.close();
		con.close();		
	}
	
}
