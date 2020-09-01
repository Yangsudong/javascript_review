<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>memberAll</title>
</head>
<body>
<%@include file="menu.jsp"%>
	<h3 class="page_title">회원 전체조회</h3>
	<div>
	<ul class="search">
		<li>메일수신여부</li>
		<li>성별</li>
		<li><button type="button">검색</button></li>
		
	</ul>
	</div>
	<table border="1" id="members">
		<thead>
			<tr>
				<th width="100" height="50">아이디</th>
				<th width="100">패스워드</th>
				<th width="50">성별</th>
				<th width="200">직업</th>
				<th width="150">메일수신여부</th>
			</tr>
		</thead>
		<tbody>
			<tr height="30">
				<td><a href="memberSelect.jsp">test</a></td>
				<td>test1</td>
				<td>man</td>  
				<td>student</td>
				<td>no</td>
			</tr>
			<tr height="30">
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr height="30">
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr height="30">
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr height="30">
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
		</tbody>
	</table>
</body>
</html>