package com.record.main.member;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class MemberVO {

	private Long userNo;
	private String id;
	private String pw;
	private String pwCheck;
	private String email;
	private String phone;
	private String address;
	private Date birth;
	private Date joinDate;
	
}
