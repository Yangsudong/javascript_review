<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>movie.jsp(jquery)</title>
<script
  src="https://code.jquery.com/jquery-3.5.1.js"
  integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
  crossorigin="anonymous">
</script>
<script>
$(function(){
	//박스오피스 조회
	$("#btnList").on("click", loadDoc);
	//영화상세정보조회(table에 그룹이벤트)
	$("#result").on("click",".movieCd", loadInfo);		
});
/*---------------------------------------
//영화상세정보 조회 function (감독,배우,상영시간 조회)
---------------------------------------*/
function loadInfo() {
	
	var cdText = $(this).text();	
	var url = "http://www.kobis.or.kr/kobisopenapi/webservice/rest/movie/searchMovieInfo.json?key=430156241533f1d058c603178cc3ca0e&movieCd="+cdText ;
	$.getJSON(url, function(obj){
		var arr = obj.movieInfoResult.movieInfo;		
		var tr = $("<tr>").append(
						 $("<td>").text(arr.directors[0].peopleNm),	
						 $("<td>").text(arr.actors[0].peopleNm),
						 $("<td>").text(arr.showTm)
					 );			
			$("#info").append(tr);
	});
}


/*---------------------------------------
//박스오피스 조회 function
---------------------------------------*/
function loadDoc() {
	var dt = document.getElementById("name").value;
	var url = "http://www.kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?key=430156241533f1d058c603178cc3ca0e&targetDt="+dt;
	
	$.getJSON(url, function(obj){
		var arr = obj.boxOfficeResult.dailyBoxOfficeList;
		for(i=0; i<arr.length; i++) {
			var tr = $("<tr>").append(
						 $("<td>").text(arr[i].movieCd).addClass("movieCd"),	
						 $("<td>").text(arr[i].movieNm)
					 );			
			$("#result").append(tr);
		}
		
	});
}
</script>
</head>
<body>
<input id="name">
<button type="button" id="btnList">검색</button>
<table id="result" border="1"></table>
<div id="info" ></div>
</body>
</html>