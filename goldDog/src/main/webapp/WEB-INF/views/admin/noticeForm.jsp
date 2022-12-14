<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="en"><head>
    <meta charset="UTF-8">
    
</head>

<body>
		<div>
		<jsp:include page="../header.jsp"/>
		</div>
	<!--  헤더 END -->
		<div class="container">
			<div class="box" >
				<div class="filters-content">
					<div class="row justify-content-md-center">
						<div class="col-lg-6">
						<table class="table"  style="color: black ;" height="500px" >
						  <thead>
						    <tr class="table-light" >
						      <th scope="col" class="text-center" align="center" colspan="2">  <p style="font-size:25px;">${notice.n_title}</p> </th>
						    </tr>
						  </thead>
						  <tbody>
							   	<tr >
							      <th class="text-left">작성자 : "관리자" </th>
							      <th class="text-right">(<fmt:formatDate pattern="yy-MM-dd" value="${notice.n_date}"/>)  조회수 : ${notice.n_readcount}</th>
							    </tr>
							   	<tr>
							      <th class="text-center" colspan="2"> <img src="/resources/serverImg/${notice.n_img}"> </th>
							    </tr>
							   	<tr>
							      <th class="text-center" colspan="2"><textarea rows="10" cols="50" name="notice" readonly>${notice.n_content}</textarea></th>
							    </tr>
							   	<tr>
							      <td class="text-right" colspan="2"> 
								    <sec:authorize access="hasRole('ROLE_ADMIN')">
									    <button id="deletee"  class="btn btn-danger" >삭제</button>
									    <button id="modifyy"  class="btn btn-success" >수정</button>
								    </sec:authorize>
							     	 <input type="button" class="btn btn-dark" id="back" onclick="window.location='/admin/QnA?pageNum=1'" value="뒤로">
							       </td>
							    </tr>
						  </tbody>
						</table>
				 	 </div>
				 	 </div>
			 	 </div>
			  </div>
		  </div>
		<br/><br/><br/><br/>

		<!-- 수정버튼 눌렀을때 띄울 모달 -->
		<div class="modal fade" id="modify" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
	    		<div class="modal-content">
		      		<div class="modal-header">
		        		<h5 class="modal-title" id="myModalLabel">금댕이</h5>
		        		<button type="button" class="close" data-dismiss="modal" aria-label="Close">
		          			<span aria-hidden="true">&times;</span>
		        		</button>
		      		</div>
	      			<div class="modal-body">
	      			<form id="updateNotice" action="/main/tmain" method="post" enctype="multipart/form-data">
	      			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
     					<input type="hidden" name="n_no" value="${notice.n_no}"/>
	        			<table class="table"  style="color: black;" height="500px" >
						  <thead>
						    <tr class="table-light" >
						      <th scope="col" class="text-center" align="center" colspan="2">제목 : <input type="text" name="n_title" value="${notice.n_title}"></th>
						    </tr>
						  </thead>
						  <tbody>
							   	<tr>
							      <th class="text-center" colspan="2"> <img src="/resources/serverImg/${notice.n_img}"> </th>
							    </tr>
							    <tr>
							      <th class="text-center" colspan="2"><input class="form-control" type="file" id="formFile" name="part_img"/><br> </th>
							    </tr>
							   	<tr>
							      <th class="text-center" colspan="2"><textarea rows="10" cols="50" name="n_content" >${notice.n_content}</textarea></th>
							    </tr>
						  </tbody>
						</table>
	        		</form>
	      			</div>
	      			<div class="modal-footer">
	        			<button type="button" class="btn btn-secondary" id="goModify" >글수정</button>
	        			<button type="button" class="btn btn-primary" data-dismiss="modal">취소</button>
	      			</div>
	   			</div>
	  		</div>
		</div> <!-- end 모달 -->
		
		
		<!-- 삭제버튼 눌렀을때 띄울 모달 -->
		<div class="modal fade" id="delete" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
	    		<div class="modal-content">
		      		<div class="modal-header">
		        		<h5 class="modal-title" id="myModalLabel">금댕이</h5>
		        		<button type="button" class="close" data-dismiss="modal" aria-label="Close">
		          			<span aria-hidden="true">&times;</span>
		        		</button>
		      		</div>
	      			<div class="modal-body">
	        				정말 삭제 하시겠습니까?
	      			</div>
	      			<div class="modal-footer">
	        			<button type="button" class="btn btn-secondary" id="goDelete" >글삭제</button>
	        			<button type="button" class="btn btn-primary" data-dismiss="modal">취소</button>
	      			</div>
	   			</div>
	  		</div>
		</div> <!-- end 모달 -->

		


		<form action="/admin/QnA" id="pagingForm">
			<input type="hidden" name="pageNum"  value=1>
			<input type="hidden" name="n_no" value="${notice.n_no}"/>
		</form>


 <%@ include file="../footer.jsp" %>
 
	<script type="text/javascript">
		$(document).ready(function(){
			let pagingForm = $("#pagingForm");
			
			//수정 클릭하면
			$("#modifyy").on("click",function(e){
				e.preventDefault(); 
				$("#modify").modal("show");
			});
			
			//삭제 클릭하면
			$("#deletee").on("click",function(e){
				e.preventDefault();
					$("#delete").modal("show");
			});
			
			// 글 삭제 눌렀을때 삭제하러감
			$("#goDelete").on("click",function(e){
				console.log("글삭제");
				pagingForm.attr("action","/admin/noticeDeletePro");
				pagingForm.submit();
			});
			
			// 글 수정 눌렀을때 가는 처리
			$("#goModify").on("click",function(e){
				console.log("글수정");
				pagingForm.attr("action","/admin/modifyPro");
				pagingForm.submit();
			});
			
			//수정정보 보낼때 작동하는 코드
			let	updateNotice = $("#updateNotice")
			$("#goModify").on("click",function(e){
				console.log("정보를 보낸다 .");
				updateNotice.attr("action","/admin/noticeModifyPro?${_csrf.parameterName}=${_csrf.token}");
				
				updateNotice.submit();
			});
			
			// 로그아웃 
			$("#back").click(function(e){
				e.preventDefault(); 
				$("#pagingForm").submit();
			});
			
		});
	</script>
	






