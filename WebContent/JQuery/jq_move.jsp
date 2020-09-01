<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jq_move</title>
<script
  src="https://code.jquery.com/jquery-3.5.1.js"
  integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
  crossorigin="anonymous">
</script>
</head>
<style>
	img { 		
		width : 200px;
		top : 100px;
		left : 100px;
		position : relative;
	}
</style>
</head>
<body>
<img src="../images/Koala.jpg" id="img1">
</body>
<script>
$(function(){
	$("#img1").css("left","100px");
	$("#img1").css("top","100px");

	$(document).on("mousemove",function(){
		$("#img1").css("left",event.clientX+"px");
		$("#img1").css("top",event.clientY+"px");
	});

	$(document).on("keydown",function(){
		var left = parseInt($("#img1").css("left"));
		var top = parseInt($("#img1").css("top"));
		if(event.keyCode ==37){
			$("#img1").css("left",(left-30)+"px");
		}else if(event.keyCode ==38){
			$("#img1").css("top",(top-30)+"px");
		}
		else if(event.keyCode ==39){
			$("#img1").css("left",(left+30)+"px");
		}
		else if(event.keyCode ==40){
			$("#img1").css("top",(top+30)+"px");
		}
	});
});
</script>
</html>