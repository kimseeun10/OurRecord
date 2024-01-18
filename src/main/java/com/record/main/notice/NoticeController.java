package com.record.main.notice;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.record.main.util.Pager;


@Controller
@RequestMapping("/notice/*")
public class NoticeController {

	@Autowired
	private NoticeService noticeService;
	
	@GetMapping("noticeList")
	public String getNoticeList(Model model, Pager pager)throws Exception{
		List<NoticeVO> ar = noticeService.getNoticeList(pager);
		model.addAttribute("list", ar);
		model.addAttribute("pager", pager);
		
		return "notice/noticeList";
	}
	
	@GetMapping("noticeDetail")
	public String noticeDetail(NoticeVO noticeVO, Model model)throws Exception{
		noticeVO = noticeService.noticeDetail(noticeVO);
		noticeService.hitUpdate(noticeVO);
				
		model.addAttribute("vo", noticeVO);
		
		return "notice/noticeDetail";
	}
	
	@GetMapping("noticeAdd")
	public String noticeAdd()throws Exception{
		
		return "notice/noticeAdd";
	}
	
	
	@PostMapping("noticeAdd")
	public String noticeAdd(NoticeVO noticeVO, MultipartFile[] files)throws Exception{
		int result = noticeService.noticeAdd(noticeVO);
		
		return "redirect:./noticeList";
	}
	
	@GetMapping("noticeUpdate")
	public String noticeUpdate(NoticeVO noticeVO, Model model)throws Exception{
		noticeVO = noticeService.noticeDetail(noticeVO);
		
		model.addAttribute("vo", noticeVO);
		
		return "notice/noticeUpdate";
	}
	
	
	@PostMapping("noticeUpdate")
	public String noticeUpdate(NoticeVO noticeVO, MultipartFile[] files, HttpSession session, Model model)throws Exception{
		int result = noticeService.noticeUpdate(noticeVO, files, session);
		
		return"redirect:./noticeDetail?noticeNo="+noticeVO.getNoticeNo();
	}
	
	@GetMapping("noticeDelete")
	public String noticeDelete(NoticeVO noticeVO)throws Exception{
		int result = noticeService.noticeDelete(noticeVO);
		
		return "redirect:./noticeList";
	}
	
}
