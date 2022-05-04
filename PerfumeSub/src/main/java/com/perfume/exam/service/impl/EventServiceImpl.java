package com.perfume.exam.service.impl;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.perfume.exam.service.dao.EventDAO;
import com.perfume.exam.service.EventService;
import com.perfume.exam.vo.BoardVO;
import com.perfume.exam.vo.EventVO;

@Service
public class EventServiceImpl implements EventService {

	@Autowired
	private EventDAO eventDAO;
	
	@Override
	public List<EventVO> getEndList() throws ClassNotFoundException, SQLException {

		List<EventVO> endList = eventDAO.getEndList();
		return endList;
	}

	@Override
	public List<EventVO> getIngList() throws ClassNotFoundException, SQLException {

		List<EventVO> ingList = eventDAO.getIngList();		
		return ingList;
	}

	@Override
	public List<BoardVO> getWinnerList() throws ClassNotFoundException, SQLException {
		
		List<BoardVO> winnerList = eventDAO.getWinnerList();
		return winnerList;
	}

	@Override
	public EventVO getEvent(String page) throws SQLException {
		
		EventVO event = eventDAO.getEvent(page);
		return event;
	}

	
}
