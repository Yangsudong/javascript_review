<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css" href="../common.css">    
<ul class="menu">
  <li><a href="../member/memberInsert.jsp">회원등록</a></li>
  <li><a href="../member/memberAll.jsp">회원목록</a></li>
  <li><a href="../member/boardInsert.jsp">게시글등록</a></li>
  <li><a href="../member/boardAll.jsp">게시글목록</a></li>
</ul>
<div id="divPageName"></div>
<script>
	url = location.pathname;
	var pageName = url.substring(url.lastIndexOf("/")+1);
	divPageName.innerHTML = pageName;
	lis = document.querySelectorAll(".menu li");
	if(pageName == "memberInsert.jsp") {
		lis[0].className = "menuActive";
	}else if(pageName == "memberAll.jsp"){
		lis[1].className = "menuActive";
	}else if(pageName == "boardInsert.jsp"){
		lis[2].className = "menuActive";
	}else if(pageName == "boardAll.jsp"){
		lis[3].className = "menuActive";
	}
</script>
