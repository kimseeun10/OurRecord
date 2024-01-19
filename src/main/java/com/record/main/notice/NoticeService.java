package com.record.main.notice;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.record.main.util.Pager;


@Service
public class NoticeService {

	@Autowired
	private NoticeDAO noticeDAO;
	
	public List<NoticeVO> getNoticeList(Pager pager) throws Exception {
		pager.setPerPage(10L); //10개씩
		pager.makeRowNum(); //출력할 row 처음
		Long totalCount = noticeDAO.getTotal(pager); //전체 데이터
		pager.makePageNum(totalCount); //데이터수로 페이지 수
		return noticeDAO.getNoticeList(pager);
	}
	
	public NoticeVO movePage(Long noticeNo)throws Exception{
		return noticeDAO.movePage(noticeNo);
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
