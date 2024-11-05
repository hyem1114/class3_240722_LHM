<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>




<script>
	function logout() {
		if(confirm("로그아웃하시겠습니까?")){
			location.href = "MemberLogout"
			
		}
	}
</script>
<div id="top_menu">
	<h4>
		<a href="./">HOME</a>
		<c:choose>
			<c:when test="${empty sessionScope.sId}">
				|<a href="MemberLogin">로그인</a> |
				|<a href="MemberJoin">회원가입</a>
			
			</c:when>
			<c:otherwise>
				|<a href= "MemberInfo">${sessionScope.sId}</a> 님
				|<a href="memberLogout" onclick="logout()">로그아웃</a>	
			</c:otherwise>
		</c:choose>
	<hr>
</div>

