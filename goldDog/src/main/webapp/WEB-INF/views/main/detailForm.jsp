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
	<h1>detail 페이지 입니다.</h1>
	
	
	<form action="">
	<table>
		<tr>
			<td>이름</td>
			<td>${member.m_nick}</td>
		</tr>
		<tr>
			<td>
				<a>판매자 소개 </a>		
			</td>
			<td>
				<a>특이사항</a>		
			</td>
			<td>
				<a>리뷰</a>		
			</td>
		</tr>
		<tr>
			<td >자기소개</td>			
			<td >${trainer.t_self}</td>
		</tr>
		<tr>
			<td> 특이사항</td>	
			<td> 특이사항</td>	
		</tr>
		<tr>
			<td> 설명</td>	
			<td> ${review.r_text}</td>
		</tr>
		
	</table> 
	</form>




</body>
</html>