package com.record.main.notice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

@Controller
@RequestMapping("/notice/*")
public class NoticeController {

	@Autowired
	private NoticeService noticeService;
	
	@GetMapping("noticeList")
	public String getNoticeList(Model model)throws Exception{
		List<NoticeVO> ar = noticeService.getNoticeList();
		model.addAttribute("list", ar);
		
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
}
