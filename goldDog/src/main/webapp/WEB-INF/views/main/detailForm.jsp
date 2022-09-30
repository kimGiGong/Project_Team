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
	
	
	
	<table width="680" height="500">
		<tr>
			<td>사진</td>
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
			<td> 판매정보</td>	
			<td> ${trainer.t_sel}</td>	
		</tr>
		<tr>
			<td> 리뷰</td>	
			<td> 평균 평점 ${review.r_text}</td>
		</tr>
		<tr>
			<td> 리뷰</td>	
			<td> ${review.r_text}</td>
		</tr>
		
		
	</table> 
	
	<table width="680" height="500">
		<tr>
			<td>완료</td>
		</tr>
		<tr>
			<td>기본금액</td>
			<td>${trainer.t_price}</td>
		</tr>
		<tr>
			<td>가능한 날짜</td>
			<td>api 올 곳</td>
		</tr>
		<tr>
			<td>보유 자격증</td>
			<td>${trainer.t_license}</td>
		</tr>
		<tr>
			<td>경력</td>
			<td>${trainer.t_career}</td>
		</tr>
		<tr>
			<td> <button onclick="window.location='addPetInfo'">협의하기</button>  </td>
		</tr>
		
	</table>





</body>
</html>