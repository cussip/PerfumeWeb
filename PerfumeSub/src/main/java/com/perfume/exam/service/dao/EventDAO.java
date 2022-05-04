package com.perfume.exam.service.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.perfume.exam.vo.BoardVO;
import com.perfume.exam.vo.EventVO;

@Mapper
public interface EventDAO {

	public List<EventVO> getEndList() throws ClassNotFoundException, SQLException;
	
	public List<EventVO> getIngList() throws ClassNotFoundException, SQLException;

	public List<BoardVO> getWinnerList() throws ClassNotFoundException, SQLException;
	
	public EventVO getEvent(String page) throws SQLException;
 
}
 