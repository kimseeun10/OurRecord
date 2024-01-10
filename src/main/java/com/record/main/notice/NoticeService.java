package com.record.main.notice;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

@Service
public class NoticeService {

	@Autowired
	private NoticeDAO noticeDAO;
	
	public List<NoticeVO> getNoticeList() throws Exception{
		return noticeDAO.getNoticeList();
	}
	
	public NoticeVO noticeDetail(NoticeVO noticeVO) throws Exception{
		return noticeDAO.noticeDetail(noticeVO);
	}
	
	public int hitUpdate(NoticeVO noticeVO)throws Exception{
		return noticeDAO.hitUpdate(noticeVO);
	}
	
	public int noticeAdd(NoticeVO noticeVO) throws Exception{
		return noticeDAO.noticeAdd(noticeVO);
	}
	
	public int noticeUpdate(NoticeVO noticeVO, MultipartFile[] files, HttpSession session) throws Exception{
		return noticeDAO.noticeUpdate(noticeVO);
	}
	
	public int noticeDelete(NoticeVO noticeVO)throws Exception{
		return noticeDAO.noticeDelete(noticeVO);
	}
}
