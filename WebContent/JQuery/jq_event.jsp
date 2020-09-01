<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jq_event</title>
<script
  src="https://code.jquery.com/jquery-3.5.1.js"
  integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
  crossorigin="anonymous">
</script>
<script>
	$(window).on("load", init);
	function init() {
		$(".price").hide();
		/*
		$(".title").on("mouseenter", function(){
			//var price = $(this).parent().find(".price").eq(0);
			//price.css("display", "iniline");
			$(this).next().show();
		});		
		$(".title").on("mouseleave", function(){
			$(this).next().hide();
		});
		*/
		//위에를 한번에
		$(".title").on("mouseenter mouseleave", function(){
			$(this).next().toggle();
		});
	}
</script>
</head>
<body>
	<div>
		<span class="title">스프링</span>
		<span class="price">5000</span>
	</div>
	<div>
		<span class="title">자바</span>
		<span class="price">4000</span>
	</div>
	<div>
		<span class="title">자바스크립트</span>
		<span class="price">3000</span>
	</div>
</body>
</html>