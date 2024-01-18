package com.record.main.notice;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.record.main.util.Pager;

@Mapper
public interface NoticeDAO {

	public Long getTotal(Pager pager)throws Exception;
	
	public List<NoticeVO> getNoticeList(Pager pager) throws Exception;
	
	public int noticeAdd(NoticeVO noticeVO) throws Exception;
	
	public NoticeVO noticeDetail(NoticeVO noticeVO) throws Exception;
	
	public int noticeUpdate(NoticeVO noticeVO) throws Exception;
	
	public int noticeDelete(NoticeVO noticeVO) throws Exception;
	
	public int hitUpdate(NoticeVO noticeVO) throws Exception;
	
}
