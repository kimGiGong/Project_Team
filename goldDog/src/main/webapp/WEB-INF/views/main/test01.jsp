<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link href="/resources/css/style.css" rel="stylesheet" type="text/css">
<body>
<br/><br/><br/>
	<h1>test(견적서) 페이지 입니다.</h1>

	<table>
		<tr>
			<td>강쥐이름</td>
			<td>${dog.d_name}</td>
		</tr>
		<tr>
			<td>강아지 나이</td>
			<td>${dog.d_age}</td>
		</tr>
		<tr>
			<td>성별</td>
			<td>${dog.d_gender}</td>
		</tr>
		<tr>
			<td>견종</td>
			<td>${dog.d_type}</td>
		</tr>
		<tr>
			<td>무게</td>
			<td>${dog.d_weight}</td>
		</tr>
		<tr>
			<td>원하는 서비스</td>
			<td>${est.e_service}</td>
		</tr>
		<tr>
			<td>출장시 주의사항</td>
			<td>${est.e_note}</td>
		</tr>
	</table> 





</body>
</html>