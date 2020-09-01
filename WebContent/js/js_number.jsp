<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>js_number.jsp</title>

</head>
<body>
		<input name="num1" id="num1">+
		<input name="num2" id="num2">=
		<input name="result" id="result">
		<button type="button" onclick="checkResult()" id="btnResult">결과확인</button>
		<button type="button" onclick="init()" id="btnInit">초기화</button>	
		<div id = "divResult"></div>
	<script>
	
	var ocnt = 0; //맞은수
	var xcnt = 0; //틀린수
	
	function checkResult() {
		
		if(parseInt(result.value) == parseInt(num1.value) + parseInt(num2.value)) {
			window.alert("맞음");
		} else {
			window.alert("틀림");
		}
		
		// 두수의 합이  result와 같으면 "맞음", 다르면 "틀림"으로 출력	
		var sum = parseInt(num1.value) + parseInt(num2.value);
		if( sum == result.value ) {
			//맞은 수 카운트
			ocnt++;
			divResult.innerHTML+= "맞음<br>"
		}else {
			//틀린 수 카운트	
			xcnt++;
			divResult.innerHTML+= "틀림<br>"
		}
		
		// 틀린수 + 맞은수 == 5회이면 맞은수 *20 결과를 출력하고 버튼 비활성화
		if (ocnt + xcnt == 5){
			divResult.innerHTML+=("결과는 " + (ocnt*20) + " 점 입니다."); 
			btnResult.disabled = "disabled";
		}else {
			init();
			result.value="";
		}		

	}	
	
	//함수 선언
	function init() {
		num1.value = Math.floor(Math.random() * 10+1);
		num2.value = Math.floor(Math.random() * 10+1);		
	}
	//함수 호출
	init();
	</script>
</body>

</html>
