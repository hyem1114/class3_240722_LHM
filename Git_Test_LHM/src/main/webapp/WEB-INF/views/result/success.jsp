<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<script type="text/javascript">
		alert("${msg}"); //\${"msg"} 부분은 서버측(톰캣)에서 결과값으로 치환되어 전송됨
		
		if("${targetURL}" == ""){
			history.back();
		}else {
			location.href = "${targetURL}";
		}
		
		
		
		history.back();
		
	
	
	</script>

</body>
</html>