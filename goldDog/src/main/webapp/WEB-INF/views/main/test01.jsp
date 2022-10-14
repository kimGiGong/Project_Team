<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    
		<jsp:include page="../header.jsp"/>
		
</head>
<body>
<br/><br/><br/>
	<h1>test(견적서) 페이지 입니다.</h1>



	<c:forEach var="i" begin="0" end="${eCount-1}" step="1">
	<form action="" >
	<table>
		<tr>
			<td> <button class="btn float-right btn-info goEst" value="${estimate[i].e_no}">견적서 확인 </button></td>
			<td>${estimate[i].e_no}</td>
		</tr>
		<tr>
			<td>훈련사 닉</td>
			<td>${tMember[i].m_nick}</td>
		</tr>
		<tr>
			<td>훈련사 전화번호</td>
			<td>${tMember[i].m_phone}</td>
		</tr>
	</table>
	</form> 
	</c:forEach>


	 <form id="pagingForm" action="/main/addEstimate" method="get">
	 
     </form>



</body>
 <%@ include file="../footer.jsp" %>
<script type="text/javascript">
		$(document).ready(function(){
			
			let pagingForm=$("#pagingForm");
			$(".goEst").on("click",function(e){
				e.preventDefault(); 
				console.log("글쓰기 확인 모달.");
				let e_no=$(this).val();
				console.log(e_no+"알려");
				pagingForm.append("<input type='hidden' name='e_no' value='" + e_no+ "' />"); 
				// pagingForm의 action 속성값을 /board/read로 변경
				pagingForm.attr("action", "/main/addEstimate"); 
				// read로 이동하기(form으로 요청) 
				pagingForm.submit(); 
				
				
			});
			
			
		});
</script>
</html>

