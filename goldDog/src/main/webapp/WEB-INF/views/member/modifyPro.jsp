<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@	taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>modifyPro</title>
</head>
<body>
	<c:if test="${result == 1}">
		<sec:authorize access="hasRole('ROLE_MEMBER')">
			<script>
				alert("회원 정보 수정 완료 !");
				window.location="/mypage";
			</script>
		</sec:authorize>
		<sec:authorize access="hasRole('ROLE_TRAINER')">
			<script>
				alert("회원 정보 수정 완료 !");
				window.location="/manager";
			</script>
		</sec:authorize>
		<sec:authorize access="hasRole('ROLE_HAIR')">
			<script>
				alert("회원 정보 수정 완료 !");
				window.location="/manager";
			</script>
		</sec:authorize>
	</c:if>
	<c:if test="${result != 1}">
		<script>
			alert("비밀번호가 맞지 않습니다. 다시 시도해주세요.");
			history.go(-1);
		</script>
	</c:if>
</body>
</html>