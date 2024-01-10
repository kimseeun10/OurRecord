package com.record.main.notice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
}
