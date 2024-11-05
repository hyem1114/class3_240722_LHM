<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>로그인</h1>
<form action="login" method="post">
    <table> 
        <tr>
            <th>아이디</th>
            <td><input type="text" name="mem_id" required></td>
        </tr>
        
        <tr>
            <th>비밀번호</th>
            <td><input type="passwd" name="mem_psswd" required></td>
        </tr>
        
	</table>
        
        <input type="checkbox" name="rememberId">아이디 기억하기<br>
        <input type="submit" value="로그인">

        


</form>

</body>
</html>