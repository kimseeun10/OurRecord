package com.record.main.freeboard;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class FreeVO {

	private Long freeNum;
	private Long categoryNum;
	private String freeTitle;
	private Long userNo;
	private String freeContents;
	private Date uploadDate;
	private Date updateDate;
	private Long hit;
	private int anonymity;
	private String freePassword;
	
	private String name;
	private String categoryName;
	
	private Long last;
	private Long next;
	private String lasttitle;
	private String nexttitle;
	
	
	
}
