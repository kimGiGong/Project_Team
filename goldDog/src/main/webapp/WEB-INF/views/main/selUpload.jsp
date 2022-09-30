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

	<br/><br/><br/><br/>



	<form action="selUpload" method="post">
		<input type="hidden" name="m_no" value="${m_no}">
		<table>
			<tr>
				<td>자기소개</td>
				<td> <input type="text" name="t_self"> </td>
			</tr>
			<tr>
				<td>판매정보</td>
				<td> <input type="text" name="t_sel"> </td>
			</tr>
			<tr>
				<td>자격증</td>
				<td> <input type="text" name="t_license"> </td>
			</tr>
			<tr>
				<td>훈련시작금액</td>
				<td> <input type="text" name="t_price"> </td>
			</tr>
			<tr>
				<td>경력</td>
				<td> <input type="text" name="t_career"> </td>
			</tr>
			<tr>
				<td><input type="submit" value="등록"/></td>
			</tr>
		</table>
	</form>






</body>
</html>