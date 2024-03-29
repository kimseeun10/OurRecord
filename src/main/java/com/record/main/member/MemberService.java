package com.record.main.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

@Service
public class MemberService {

	@Autowired
	private MemberDAO memberDAO;

	
	//로그인
	public MemberVO getLogin(MemberVO memberVO)throws Exception{
		MemberVO loginVO = memberDAO.getMember(memberVO);
		
		if(loginVO == null) {
			return loginVO;
		}
		
		if(loginVO.getPw().equals(memberVO.getPw())) {
			return loginVO;
		}
		
		return null;
	}
	
	//회원가입

	public int setJoin(MemberVO memberVO)throws Exception{
		String pw = memberVO.getPw();
//		memberVO.setPw(passwordEncoder.encode(pw));		// 비밀번호 암호화
		int result = memberDAO.setJoin(memberVO);
		
		return result;
	}
	
}
