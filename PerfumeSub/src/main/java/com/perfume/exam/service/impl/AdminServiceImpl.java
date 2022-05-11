package com.perfume.exam.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.perfume.exam.service.dao.AdminDAO;
import com.perfume.exam.service.AdminService;
import com.perfume.exam.vo.BoardVO;
import com.perfume.exam.vo.EventVO;

@Service
public class AdminServiceImpl implements AdminService {
	
	@Autowired
	private AdminDAO adminDao;

	@Override
	public List<BoardVO> getNoticeList() throws Exception {

		List<BoardVO> noticeList = adminDao.getNoticeList();
		return noticeList;
	}

	@Override
	public List<BoardVO> getFAQList() throws Exception {
		
		List<BoardVO> FAQList = adminDao.getFAQList();
		return FAQList;
	}

	@Override
	public List<EventVO> getEventList() throws Exception {
		
		List<EventVO> eventList = adminDao.getEventList();
		return eventList;
	}
	
	@Override
	public List<BoardVO> getWinnerList() throws Exception {

		List<BoardVO> winnerList = adminDao.getWinnerList();
		return winnerList;
	}

	@Override
	public void boardInsert(BoardVO board) throws Exception {
		
		String title = board.getTitle();
		String content = board.getContent();
		String category = "notice";
		
		if(board.getCategory().equals("NOTICE")) {
			category = "notice";	
		} else if(board.getCategory().equals("FAQ")) {
			category = "faq";
		}
		
		adminDao.boardInsert(title, content, category);			
	}

	@Override
	public void boardUpdate(BoardVO board) throws Exception {

		int id = board.getId();
		String title = board.getTitle();
		String content = board.getContent();
		
		adminDao.boardUpdate(id, title, content);
	}

	@Override
	public void boardDelete(BoardVO board) throws Exception {
		
		int id = board.getId();
		
		adminDao.boardDelete(id);	
	}

	@Override
	public String getBenefit() throws Exception {

		String benefit = adminDao.getBenefit();
		return benefit;
	}

	@Override
	public void beneSubmit(String fileName) throws Exception {
		
		String path = "/img/customer/" + fileName;
		
		adminDao.beneSubmit(path);
	}

}
