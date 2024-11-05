package com.itwillbs.gittest_lhm.mapper;

import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.itwillbs.gittest_lhm.vo.MemberVO;

@Mapper
public interface MemberMapper {

	// 회원 가입
	int insertMember(MemberVO member);

	// 회원 패스워드 조회
	String selectMemberPasswd(String id);

	// 회원 상세정보 조회
	MemberVO selectMember(MemberVO member);

	int updateMember(Map<String, String> map);
	//회원탈퇴
	int updateMemberStatus(
			@Param("id")String id,
			@Param("member_status") int member_status);


}
