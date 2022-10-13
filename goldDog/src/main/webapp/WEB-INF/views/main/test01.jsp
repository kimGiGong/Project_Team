<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
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



	<c:forEach var="i" begin="0" end="${eCount-1}" step="1">
	<table>
		<tr>
			<td>견적서 확인</td>
			<td>${estimate[i].e_no}</td>
		</tr>
		<tr>
			<td>훈련사 닉</td>
		</tr>
		<tr>
			<td>훈련사 전화번호</td>
		</tr>
	</table> 
	</c:forEach>




</body>
</html>