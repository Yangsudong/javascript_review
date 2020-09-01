<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jq_number</title>
</head>
<body>
	<input name="num1" id="num1">+
	<input name="num2" id="num2">=
	<input name="result" id="result">
	<button type="button" id="btnResult">결과확인</button>
	<button type="button" id="btnInit">초기화</button>	
	<div id = "divResult"></div>
<script
  src="https://code.jquery.com/jquery-3.5.1.js"
  integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
  crossorigin="anonymous">
</script>
<script>
	$("#btnResult").on("click", checkResult);
	$("#btnInit").on("click", init);
	
	var ocnt = 0; //맞은수
	var xcnt = 0; //틀린수
	
	function checkResult() {
				
		if(parseInt($("#result").val()) == parseInt($("#num1").val()) + parseInt($("#num2").val())) {
			window.alert("맞음");
		} else {
			window.alert("틀림");
		}		
		
		var sum = parseInt($("#num1").val()) + parseInt($("#num2").val())
		if( sum == $("#result").val()) {
			//맞은 수 카운트
			ocnt++;
			$("#divResult").html($("#divResult").html()+"맞음<br>");
		}else {
			//틀린 수 카운트	
			xcnt++;
			$("#divResult").html($("#divResult").html()+"틀림<br>");
		}
		
		
		if (ocnt + xcnt == 5){
			$("#divResult").html("결과는 " + (ocnt*20) + " 점 입니다.<br>"); 
			$("#btnResult").attr("disabled",true);
		}else {
			init();			
			$("#result").val("");
		}	
	}	
	
	//함수 선언
	function init() {
		$("#num1").val(Math.floor(Math.random() * 10+1));
		$("#num2").val(Math.floor(Math.random() * 10+1));	
		$("#btnResult").attr("disabled",false);
	}
	//함수 호출
	init();
	</script>
</body>
</html>