package com.itwillbs.gittest_lhm.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;

/*
[ spring_mvc_board3.member 테이블 정의 ]
------------------------------------------
번호(idx) - 정수, PK, 자동증가 (AUTO_INCREMENT)
이름(name) - 문자 10자, NN
아이디(id) - 문자 16자, UN, NN
패스워드(passwd) - 문자 100자, NN (암호화로 인해 문자열 길이 길어짐)
우편번호(post_code) - 문자 10자, NN
기본주소(address1) - 문자 100자, NN
상세주소(address2) - 문자 100자, NN
이메일(email) - 문자 50자, UN, NN
직업(job) - 문자 10자, NN
성별(gender) - 문자 1자, NN
취미(hobby) - 문자 50자, NN
가입동기(motivation) - 문자 500자, NN
가입일(reg_date) - 날짜 및 시각(DATETIME), NN
탈퇴일자(withdraw_date) - 날짜 및 시각(DATETIME)
회원상태(member_status) - 정수, NN(1 : 정상, 2 : 휴면, 3 : 탈퇴)
메일인증상태(mail_auth_status) - 문자 1자, NN('Y' : 인증, 'N' : 미인증) 

CREATE TABLE spring_mvc_board3.member (
    idx INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(10) NOT NULL,
    id VARCHAR(16) NOT NULL,
    passwd VARCHAR(100) NOT NULL,
    post_code VARCHAR(10) NOT NULL,
    address1 VARCHAR(100) NOT NULL,
    address2 VARCHAR(100) NOT NULL,
    email VARCHAR(50) NOT NULL,
    job VARCHAR(10) NOT NULL,
    gender VARCHAR(1) NOT NULL,
    hobby VARCHAR(50) NOT NULL,
    motivation VARCHAR(500) NOT NULL,
    reg_date DATETIME NOT NULL,
    withdraw_date DATETIME,
    member_status INT NOT NULL,
    mail_auth_status VARCHAR(1) NOT NULL,
    UNIQUE KEY (id, email)
);


*/
@Data
public class MemberVO {
	private int idx;
	private String name;
	private String id;
	private String passwd;
	private String post_code;
	private String address1;
	private String address2;
	//-----------------
	// 폼에서 입력받은 이메일 주소는 email1,2 라는 파라미터명으로 전달되므로
	// memberVO 객체에 email1 , 2객체필요
	// insert 과정에서 .. . . .. . . .
	//-----------------
	//만약 뷰페이지에서 자바스트립트 활용하여 email 결합할 경우 email1,email2 멤버변수 불필요
	private String email;
	private String email1;
	private String email2;
	//-----------------
	private String job;
	private String gender;
	private String hobby;
	private String motivation;
	private Date reg_date;
	private Date withdraw_date;  
	private int member_status; //회원상태 (1:정상 2:휴먼 3:탈퇴)
	private String mail_auth_status; // 이메일 인증상태 (Y:인증 N:미인증)
	
	
	
	
	
	
	
	
}
