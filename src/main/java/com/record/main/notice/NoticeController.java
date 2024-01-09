package com.record.main.notice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

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
	
}
