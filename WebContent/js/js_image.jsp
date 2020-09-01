<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>js_image.jsp</title>
<style>
	img { width : 250px;}
</style>
</head>
<body>
<script>
	var imgAry=["../images/Chrysanthemum.jpg",
				"../images/Desert.jpg",
				"../images/Hydrangeas.jpg",
				"../images/Jellyfish.jpg"];
	
	var i;
	for(i=0; i<imgAry.length; i++){
		var img = document.createElement("img");	// 태그생성
		img.src = imgAry[i];						// src 속성 변경
		document.body.appendChild(img);	// body에 추가
		img.addEventListener("mouseover",function(){
			this.style.width = "350px";
		});		
		img.addEventListener("mouseout",function(){
			this.style.width = "250px";
		});	
		/*
		img.onmouseover = function(){
			this.style.width = "350px";
			}
		img.onmouseout = function(){
			this.style.width = "250px";
			}
		*/
	}	
</script>
</body>
</html>