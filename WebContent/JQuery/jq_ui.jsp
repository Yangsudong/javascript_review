<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jq_ui</title>
 <link rel="stylesheet" href="../jquery-ui.css">
 <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
 <script src="../jquery-ui.js"></script>
 <script>
 	$(function(){
 		$("#acor").accordion({
 			active:1,	// 두번재부터 열린채로 화면보임
 			animate : 300,	// 애니메이션시간
 			collapsible : true,
 			activate : function(event, ui){
 				console.log(ui.newHeader.text())
 			}
 		});
 		//다이아로그
 		$("#msg").dialog({
 			autoOpen: false,	// 처음시작에는 비활성화
 			height : 400,
 			width : 350,
 			modal : true,		// 팝업 활성화시 닫아야만 다른메뉴활성
 			buttons : {
 				'저장' : function(){
 					alert("저장완료");
 				},
 				'취소' : function(){
 					$("#msg").dialog("close");
 				}
 			}
 		});
 		//버튼클릭시 다이아로그 팝업 나오게
 		$("#btnPopup").button().click(function(){
 			$("#msg").dialog("open");
 		});
 		//datepicker
 		$("#regDate").datepicker({
 			 dateFormat: "yy-mm-dd",
 			 minDate : -7,
 			 maxDate : "1m"
 		});
 	});
 </script>
</head>
<body>
<input id="regDate">
<span id="btnPopup">팝업</span>
<div id="msg">
	알림팝업
</div>
<div id="acor">
	 <h3>자바</h3>
	 <div> 자바란...</div>
	 <h3>스프링</h3>
	 <div> 스프링이란...</div>
	 <h3>자바스크립트</h3>
	 <div> 자바스크립트란...</div>
</div>
</body>
</html>