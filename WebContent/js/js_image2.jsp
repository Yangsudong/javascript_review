<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html><head><meta charset="UTF-8">
<title>js_image.jsp</title>
<style>
	img { width : 100px;}
</style>
</head>
<body>
<script>
var imgArr = [  {src:"./images/Chrysanthemum.jpg", alt:"국화",  width:100},
				{src:"./images/Desert.jpg",        alt:"사막",  width:110},
				{src:"./images/Hydrangeas.jpg",    alt:"수국",  width:120},
				{src:"./images/Jellyfish.jpg",     alt:"해파리", width:130}
			 ];
var i;
for(i=0; i<imgArr.length; i++){
	var img = document.createElement("img");	// 태그생성
	img.src = imgArr[i].src;
	img.alt = imgArr[i].alt;
	img.width = imgArr[i].width;
	// src 속성 변경
	document.body.appendChild(img);				// body에 추가
}	
</script>
</body>
</html>