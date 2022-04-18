package com.per.model;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class MemberVO {

	private String id;         // 아이디
	private String password;   // 패스워드
	private String name;       // 이름
	private String email;      // 이메일
	private String mobile;     // 전화번호
	private String zipcode;    // 우편번호
	private String address1;   // 주소
	private String address2;   // 상세주소
	private int    adminCk;    // 관리자확인( 0: 일반회원 1: 관리자)
	private Date   regDate;    // 등록일 import java.sql.Date
}
