<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>js_select</title>
</head>
<body>
	<input id="txtFruit">
	<button type="button" id="btnAdd" onclick="addFruit()">추가</button>
	<button type="button" id="btnRemove" onclick="removeFruit()">삭제</button><br>
	<select id="listFruit" size="10" multiple></select>
	
<script>
//텍스트필드의 값을 select에 추가
txtFruit.addEventListener("keypress", function(){
	if(event.keyCode == 13) {
		addFruit();
	}
});

function addFruit() {
	//option태그 생성
	var option = document.createElement("option");
	option.text = txtFruit.value;
	//select에  추가
	listFruit.add(option);
	txtFruit.value="";
}
function removeFruit() {
	//option태그 생성
	var option = document.createElement("option");
	option.text = txtFruit.value;
	//select에서 삭제
	listFruit.remove(listFruit.selectedIndex);
	txtFruit.value="";
}
</script>
</body>
</html>