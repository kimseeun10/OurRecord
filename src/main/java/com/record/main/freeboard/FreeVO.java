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
	
	private String name;
	private String categoryName;
	
	
	
}
