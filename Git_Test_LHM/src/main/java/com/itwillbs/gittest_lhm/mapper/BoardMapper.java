package com.itwillbs.gittest_lhm.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.itwillbs.gittest_lhm.vo.BoardVO;

@Mapper
public interface BoardMapper {

	// 게시물 등록
	int insertBoard(BoardVO board);


	// 게시물 목록 조회
	List<BoardVO> selectBoardList(
			@Param("searchType") String searchType, 
			@Param("searchKeyword") String searchKeyword, 
			@Param("startRow") int startRow, 
			@Param("listLimit") int listLimit);
	// 전체 게시물 수 조회
//		int selectBoardListCount();
		
		// 전체 게시물 수 조회(검색어 기능에 추가로 인해 검색어에 대한 게시물 수 조회로 변경)
		int selectBoardListCount(
				@Param("searchType") String searchType, 
				@Param("searchKeyword") String searchKeyword);

		// 게시물 상세정보 조회
		BoardVO selectBoard(int board_num);

		// 게시물 조회수 증가
		void updateReadcount(BoardVO board);

		//게시물 삭제
		int deleteBoard(int board_num);

		//게시물 수정
		int updateBoard(BoardVO board);

	}

