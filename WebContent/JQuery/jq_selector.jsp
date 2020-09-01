<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jq_selector</title>
</head>

<body>
	<table border="1" id="tbl">
	<tbody>
		<tr>
			<td id="std">kim</td>
			<td>30</td>
			<td><button type="button" class="btnSelect">선택</button></td>
		</tr>	
		<tr>
			<td>park</td>
			<td>25</td>
			<td><button type="button" class="btnSelect">선택</button></td>
		</tr>	
		<tr>
			<td>choi</td>
			<td>40</td>
			<td><button type="button" class="btnSelect">선택</button></td>
		</tr>	
	</tbody>
</table>
<script
  src="https://code.jquery.com/jquery-3.5.1.js"
  integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
  crossorigin="anonymous"></script>
<script>
	$("td:first-child").css("backgroundColor", "lightgreen");	
//	$("td:nth-child(2)").css("backgroundColor", "lightgreen");
//	$("tr  button").css("backgroundColor", "lightgreen"); // 자손까지 모두 적용
//	$("tr > button").css("backgroundColor", "lightgreen"); // 자식까지만 적용
	
	console.log($("#std").closest("table")); //조상중에서 검색(부모아님)
	// $("#std").closest("tr").next().find("td").eq(1).html()
	// 조상의 tr중 다음 tr에서 td중 0,1,2중 1번값에 해당하는 값을 가져오므로 "25"가 나옴 
	//$("td:contains('choi')").html()
	// 특정내용검색 "choi"
</script>
</body>
</html>