package com.record.main.notice;

import java.sql.Date;
import java.util.List;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class NoticeVO {

	private Long noticeNo;
	private String title;
	private String contents;
	private Date uploadDate;
	private Date updateDate;
	private int hit;
	private Long userNo;
	private String name;
	
	
}
