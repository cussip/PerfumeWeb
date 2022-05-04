package com.perfume.exam.service;

import java.util.List;

import com.perfume.exam.vo.BoardVO;
import com.perfume.exam.vo.EventVO;


public interface AdminService {
	
	public List<BoardVO> getNoticeList() throws Exception;
	public List<BoardVO> getFAQList() throws Exception;
	public List<EventVO> getEventList() throws Exception;
	public String bwsubmit(BoardVO board) throws Exception;
	
}
