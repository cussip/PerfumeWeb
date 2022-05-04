package com.perfume.exam.mapper;

import com.perfume.exam.model.MemberVO;

public interface MemberMapper {
	
	//회원가입
	public void memberJoin(MemberVO member);
	
	// 아이디 중복 검사
	public int idCheck(String id);
	
	//로그인 
    public MemberVO memberLogin(MemberVO member);
	
    //아이디 찾기
    public String find_id(String email);
}
