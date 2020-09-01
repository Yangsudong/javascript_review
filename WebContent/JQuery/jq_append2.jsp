<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jq_append2</title>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script>
$(function(){		//ready(load이전) 이벤트
	//왼쪽 td 클릭 
	$("td").on("click", function(){
		$("#right").append( $(this).parent());
	})
	
	//오른쪽 td (그룹이벤트)
	$("#right").on("click", "td" , function(){
		$("#left").append( $(this).parent());
	})
	
})
</script>
</head>
<body>
<table id="left" border="1">
	<tr><td>홍길동</td><td>30</td></tr>
	<tr><td>김기자</td><td>30</td></tr>
	<tr><td>이기자</td><td>30</td></tr>
</table>
<br><br>
<table id="right" border="1">
</table>
</body>
</html>