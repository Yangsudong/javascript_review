<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>js/js_propagation</title>
<style>
	div { 
		padding : 30px;
		border : 1px solid blue;
	 }
</style>
<script>
window.addEventListener("load",function(){
	a.addEventListener("click", function(){alert("A");});
	b.addEventListener("click", function(){
		alert("B");
		window.event.stopPropagation()	
	});
	c.addEventListener("click", function(){
		alert("C");
		window.event.stopPropagation();
	});
	linka.addEventListener("click", function(){
		if(! confirm("이동할까요?")) {
			window.event.preventDefault();	//a, submit
		}
	});
});

</script>
</head>
<a href="js_event.jsp" id="linka">이벤트 테스트</a>
<body>
	<div id="a">A
		<div id="b">B
			<div id="c">C</div>
		</div>
	</div>
</body>
</html>