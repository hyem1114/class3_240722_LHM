<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MVC 게시판</title>
<!-- 외부 CSS 파일(css/default.css) 연결하기 -->
<link href="${pageContext.request.contextPath}/resources/css/default.css" rel="stylesheet" type="text/css">
<style type="text/css">
	#writeForm {
		width: 500px;
		min-height: 550px;
		margin: auto;
		border: 1px solid gray
	}
	
	#writeForm  {
		margin: auto;
		width: 500px;
	}
	
	
	.write_td_left {
		width: 150px;
		text-align: center;
	}
	
	.write_td_right {
		width: 300px;
	}
	
	
	#board_name {
	background-color: lightyellow;
	}
	
	#commandCell {
		text-align: center;
		margin-top: 10px;
		padding: 10px;
		border-top: 1px solid gray;
	}
</style>
</head>
<body>
	<header>
		<%-- inc/top.jsp 페이지 삽입(jsp:include 액션태그 사용 시 / 경로는 webapp 가리킴) --%>
		<jsp:include page="/WEB-INF/views/inc/top.jsp"></jsp:include>
	</header>
	<!-- 게시판 등록 -->
	<article id="writeForm">
		<h1>게시판 글 등록</h1>
		<%-- 기본젇으로 폼 태그는 enc속성값이 enctype="application/x-www-form-urlencoded"   . .. . . .
			단 파일 업로드 위해서는 "multipart/form-data" 로 설정 필수 !!
			=> 모든 파라미터를 인코딩된 문자열이 아닌 multipart 라는 형식으로 관리하므로
			서버측으로 업로드ㅠㅏ일이 실제 파일 형태로 정상적으로 전송되며 다른 파라미터도 전송 
			만약 서버측 컨트롤러에서 파라미터 매핑시 VO클래스등에 . . . . enctype=multipart 설정안하면 예외발생함
			
			--%>
		<form action="" name="BoardWrite" method="post" enctype="multipart/form-data">
			<table>
				<tr>
					<td class="write_td_left"><label for="board_name">글쓴이</label></td>
					
					<td class="write_td_right" >
					<input type="text" id ="board_name" name="board_name" required="required" value="${sessionScope.sId}" readonly/></td>
				</tr>
				<!-- 세션 아이디로 작성자를 구분므로 비밀번호 불필요 -->
<!-- 				<tr> -->
<!-- 					<td class="write_td_left"><label for="board_pass">비밀번호</label></td> -->
<!-- 					<td class="write_td_right"> -->
<!-- 						<input type="password" name="board_pass" required="required" /> -->
<!-- 					</td> -->
<!-- 				</tr> -->
				<tr>
					<td class="write_td_left"><label for="board_subject">제목</label></td>
					<td class="write_td_right"><input type="text" id="board_subject" name="board_subject" required="required" /></td>
				</tr>
				<tr>
					<td class="write_td_left"><label for="board_content">내용</label></td>
					<td class="write_td_right">
						<textarea id="board_content" name="board_content" rows="15" cols="40" required="required"></textarea>
					</td>
				</tr>
				
				<tr>
					<td class="write_td_left"><label for="board_file">첨부파일</label></td>
					<td class="write_td_right">
					
					<%-- 첨부파일 테그는 인풋태그의 type="file" 속성활용 --%>
					<%-- 파일업로드시 실제 파일을 서버로 전송하려면 form 태그의 enctype속성 필수 --%>
					<%-- 1 ) 한번에 하나의 파일만 업로드시 type="file" --%>
					<input type="file" name="file1">
					<input type="file" name="file2">
					<input type="file" name="file3">
					<hr>

					<%-- 2 ) 한번에 다중파일 선택가능하게 할 경우 업로드시 multiple 속성 추가 --%>
					<input type="file" name="file" multiple>
					
					</td>
				</tr>
				
			</table>
			<section id="commandCell">
				<input type="submit" value="등록">&nbsp;&nbsp;
				<input type="reset" value="다시쓰기">&nbsp;&nbsp;
				<input type="button" value="취소" onclick="history.back()">
			</section>
		</form>
	</article>
	<footer>
<!-- 회사 소개 영역(inc/bottom.jsp) 페이지 삽입 -->
		<jsp:include page="/WEB-INF/views/inc/bottom.jsp"></jsp:include>
	</footer>
</body>
</html>

