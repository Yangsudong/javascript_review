<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>js/js_event2</title>
<script>
window.addEventListener("load",function(){

	//단독이벤트
	var btns = document.getElementsByClassName("btnSelect");
/*	for(i=0; i<btns.length; i++) {
		btns[i].addEventListener("click",function(){
			var select = this.parentNode.parentNode.getElementsByTagName("td")[0];
			alert(select.innerText);	//==select.innerHTML
		});
	}	*/



	//그룹이벤트
	tbl.addEventListener("click",function(){ 
		console.log(event.target);
		console.log(this);
		alert(event.target.parentNode.parentNode.
						getElementsByTagName("td")[0].innerHTML);	
	});
});

</script>
</head>
<body>
<table border="1" id="tbl">
	<tbody>
		<tr>
			<td>kim</td>
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
</body>
</html>