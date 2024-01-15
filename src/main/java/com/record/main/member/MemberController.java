package com.record.main.member;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/member/*")
public class MemberController {

	@Autowired
	private MemberService memberService;
	
	@GetMapping("member")
	public String join(MemberVO memberVO)throws Exception{
		return "member/member";
	}
	
	// 회원가입
	
	@PostMapping("join")
	public String setJoin(MemberVO memberVO)throws Exception{
		int result = memberService.setJoin(memberVO);
		
		return "redirect:./member";
	}
	
	
	// 로그인
	
	@PostMapping("login")
	public String getLogin(MemberVO memberVO, HttpSession session)throws Exception{
		memberVO = memberService.getLogin(memberVO);
		
		if(memberVO != null) {
			session.setAttribute("member", memberVO);
			return "redirect:../";
		}
		
		return "member/member";
	}
	
	// 로그아웃
	
	@GetMapping("logout")
	public String getLogout(MemberVO memberVO, HttpSession session)throws Exception{
		session.invalidate();
		
		return"redirect:../";
	}
}
