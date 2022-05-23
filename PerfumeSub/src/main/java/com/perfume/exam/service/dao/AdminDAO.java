package com.perfume.exam.service.dao;

import java.sql.Date;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.perfume.exam.vo.BoardVO;
import com.perfume.exam.vo.EventVO;
import com.perfume.exam.vo.PerfumeVO;

@Mapper
public interface AdminDAO {

	List<BoardVO> getNoticeList() throws Exception;
	List<BoardVO> getFAQList() throws Exception;
	List<BoardVO> getWinnerList() throws Exception;
	List<EventVO> getEventList() throws Exception;
	List<PerfumeVO> getProductList() throws Exception;
	
	void boardInsert(@Param("title") String title, @Param("content") String content, 
			@Param("category") String category) throws Exception;
	
	void boardUpdate(@Param("id") int id, @Param("title") String title, @Param("content") String content);
	void boardDelete(@Param("id") int id) throws Exception;
	
	String getBenefit() throws Exception;
	void beneSubmit(@Param("fileName") String fileName) throws Exception;
	
	void eventUpdateMax(@Param("id") int id, @Param("title") String title, 
			@Param("thumbnail") String thumbnail, @Param("image") String image, 
			@Param("startdate") Date startdate, @Param("enddate") Date enddate) throws Exception;

	void eventUpdateThn(@Param("id") int id, @Param("title") String title, 
			@Param("thumbnail") String thumbnail, @Param("startdate") Date startdate, 
			@Param("enddate") Date enddate) throws Exception;

	void eventUpdateImg(@Param("id") int id, @Param("title") String title, 
			@Param("image") String image, @Param("startdate") Date startdate, 
			@Param("enddate") Date enddate) throws Exception;

	void eventUpdateMin(@Param("id") int id, @Param("title") String title, 
			@Param("startdate") Date startdate, @Param("enddate") Date enddate) throws Exception;
	
	void eventInsert(@Param("title") String title, @Param("thumbnail") String thumbnail, 
			@Param("image") String image,@Param("startdate") Date startdate, 
			@Param("enddate") Date enddate) throws Exception;
	
	void eventDelete(@Param("id") int id) throws Exception;
	
	
}
