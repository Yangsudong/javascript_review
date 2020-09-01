<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function inputCheck() {
	//id, pw 필수입력체크
	if(frm.subject.value == ""){
		window.alert("제목 입력");
		frm.subject.focus();
		return false; 
	}
	if(frm.contents.value == ""){
		alert("내용 입력");
		frm.contents.focus();
		return false;		
	}	
}
	
</script>
</head>
<body>
<%@include file="menu.jsp"%>
<h3 class="page_title">게시판</h3>
<form method="post" name="frm" id="frm" onsubmit="return inputCheck()">
	<div class="regist">		
		<label>작성자</label><input type="text" name="poster">
	</div>		
	<div>
		<label>제목</label><input type="text" name="subject">
	</div><br>
	<div>
		<label>내용</label><br><textarea id="contents" name="contents"></textarea><br>
	</div><br>
	<div>
		<label>첨부파일</label><input type="file" name="files" size="30"><br>
	</div><br><br>	
	
	<div>
	<button type="reset">초기화</button>
	<button>등록</button>
	</div>
</form>
</body>
</html>