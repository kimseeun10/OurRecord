package com.record.main.member;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MemberDAO {

	// 멤버리스트 조회 select
	public MemberVO getMember(MemberVO memberVO)throws Exception;
	
	// 회원가입 add
	public int setJoin(MemberVO memberVO)throws Exception;

	
	
}
