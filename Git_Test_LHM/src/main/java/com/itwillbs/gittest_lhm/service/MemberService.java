package com.itwillbs.gittest_lhm.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwillbs.gittest_lhm.mapper.MemberMapper;
import com.itwillbs.gittest_lhm.vo.MemberVO;

@Service
public class MemberService {
	@Autowired
	private MemberMapper mapper;

	// 회원 가입 요청
	public int registMember(MemberVO member) {
		// MemberMapper - insertMember()
		return mapper.insertMember(member);
	}

	// 회원 패스워드 조회 요청
	public String getMemberPasswd(String id) {
		// MemberMapper - selectMemberPasswd()
		return mapper.selectMemberPasswd(id);
	}

	// 회원 상세정보 조회 요청
	public MemberVO getMember(MemberVO member) {
		// MemberMapper - selectMember()
		return mapper.selectMember(member);
	}
	//회원정보 수정요청
	public int modifyMember(Map<String, String> map) {
		return mapper.updateMember(map);
	}
	//회원탈퇴 요청
	public int withdrawMember(String id) {
		//MemberMapper - updateMwmberStatus()
		// =>파라미터 : 회원상태값 (정수, 1:정상)
		return mapper.updateMemberStatus(id,3);
	}
}


