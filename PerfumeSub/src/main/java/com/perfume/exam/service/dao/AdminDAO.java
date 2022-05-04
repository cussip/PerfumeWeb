package com.perfume.exam.service.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.perfume.exam.vo.BoardVO;
import com.perfume.exam.vo.EventVO;

@Mapper
public interface AdminDAO {

	List<BoardVO> getNoticeList() throws Exception;
	List<BoardVO> getFAQList() throws Exception;
	List<EventVO> getEventList() throws Exception;
	String bwsubmit(BoardVO board) throws Exception;
	
}
