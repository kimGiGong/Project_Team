<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    
    <div>
		<jsp:include page="../header.jsp"/>
		</div>
    <style type="text/css">
    	.table-dark {
		    color: #fff;
		    border-radius: 10px;
		}
		td, th {
		  vertical-align : middle;
		  text-align : center;
		}
		a:link {
		  color : #212529;
		  text-decoration: none;
		}
		a:visited {
		  color : #6c757d;
		  text-decoration: none;
		}
		a:hover {
		  color : #212529;
		  text-decoration: underline;
		}
		a:active {
		  color : green;
		  text-decoration: none;
		}
    </style>
    
    
    
</head>
<body>
		
		
	<!--  헤더 END -->
    	<br/><br/><br/><br/>
		<div class="container">
				<div class="filters-content">
				<div class="row">
				  <div class="col-lg-6">
					<table class="table table-hover "  style="color: black ;" height="500px">
					  <thead>
					    <tr class="table-light">
					      <th scope="col" colspan="5" class="text-center">  <p style="font-size:25px;">공지사항</p>  </th>
					    </tr>
					  </thead>
					  <tbody >
					  <c:if test="${noticeCheck==0}">
						    <tr >
						      <td>조회수 : 등록된 글이 없습니다.</td>
						    </tr>
					  	</c:if>
					  <c:if test="${noticeCheck>0}">
					  	<c:forEach var="i" begin="0" end="${noticeCheck-1}" step="1" >
						    <tr >
						      <th scope="row">${notice[i].n_no}</th>
						      <td colspan="3" width="350"><a href="noticeForm?n_no=${notice[i].n_no}" > ${notice[i].n_title}</a></td>
						      <td><fmt:formatDate pattern="yy-MM-dd" value="${notice[i].n_date}"/></td>
						      <td>조회수 : ${notice[i].n_readcount}</td>
						    </tr>
					  	</c:forEach>
					  	</c:if>
					  </tbody>
					</table>
					<sec:authorize access="hasRole('ROLE_ADMIN')">
						<input type="button" class="btn float-right btn-info" id="newBoard1" value="글쓰기">
					</sec:authorize>
					   <div>
							<ul class="pagination justify-content-md-center">
								<c:if test="${pager.prev}">
									<li class="page-item">
										<a class="page-link" href="/admin/QnA?pageNumber=${npager.startPage-1}" tabindex="-1">Previous</a>
									</li>
								</c:if>
								<c:forEach var="num1" begin="${npager.startPage}" end="${npager.endPage}" >
									<li class="page-item ${npager.cri.pageNumber == num1 ? "active":""}">
										<a class="page-link notice"  href="/admin/QnA?pageNumber=${num1}">${num1}</a>
									</li>
								</c:forEach>
								<c:if test="${npager.next}">
									<li class="page-item">
										<a class="page-link" href="/admin/QnA?pageNumber=${npager.endPage+1}">Next</a>
									</li>
								</c:if>
							</ul>
						</div>
				  </div>
				  
				  
				  <div class="col-lg-6">
						<table class="table table-hover"  style="color: black ;" height="500px" >
					  <thead>
					    <tr class="table-light">
					      <th scope="col" colspan="5" class="text-center">  <p style="font-size:25px;">QnA</p> </th>
					    </tr>
					  </thead>
					  <tbody>
					  <c:if test="${QnACheck==0}">
						   <tr >
						      <td>등록된 글이 없습니다.</td>
						    </tr>
					  	</c:if>
					  <c:if test="${QnACheck>0}">
					  	<c:forEach var="i" begin="0" end="${QnACheck-1}" step="1" >
						   <tr >
						      <th scope="row">${QnA[i].q_no}</th>
						      <td colspan="3" width="350"><a href="QnAForm?q_no=${QnA[i].q_no}" >${QnA[i].q_title}</a> </td>
						      <td><fmt:formatDate pattern="yy-MM-dd" value="${QnA[i].q_date}"/></td>
						      <td>조회수 : ${QnA[i].q_readcount}</td>
						    </tr>
					  	</c:forEach>
					  	</c:if>
					  </tbody>
					</table>
					<sec:authorize access="isAuthenticated()">
						<input type="button" class="btn float-right btn-info" id="newBoard2" value="글쓰기">
					</sec:authorize>
					   <div >
							<ul class="pagination justify-content-md-center">
								<c:if test="${pager.prev}">
									<li class="page-item">
										<a class="page-link" href="/admin/QnA?pageNum=${pager.startPage-1}" tabindex="-1">Previous</a>
									</li>
								</c:if>
								<c:forEach var="num" begin="${pager.startPage}" end="${pager.endPage}" >
									<li class="page-item ${pager.cri.pageNum == num ? "active":""}">
										<a class="page-link qna" href="/admin/QnA?pageNum=${num}">${num}</a>
									</li>
								</c:forEach>
								<c:if test="${pager.next}">
									<li class="page-item">
										<a class="page-link" href="/admin/QnA?pageNum=${pager.endPage+1}">Next</a>
									</li>
								</c:if>
							</ul>
						</div>
				  </div>
				</div>
				
				 
				 
				<!-- 공지사항 글쓰기 눌렀을때 띄울 모달 --> 
					<div class="modal fade" id="addNew1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
						<div class="modal-dialog" role="document">
				    		<div class="modal-content" style="height: 690px; width: 535px;">
					      		<div class="modal-header">
					        		<h5 class="modal-title" id="myModalLabel">금댕이</h5>
					        		<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					          			<span aria-hidden="true">&times;</span>
					        		</button>
					      		</div>
				      			<div class="modal-body">
				        			<form id="addNoticePro" action="/admin/addNoticePro?${_csrf.parameterName}=${_csrf.token}" method="post" enctype="multipart/form-data">
					        			<table class="table"  style="color: black;" height="500px" >
										  <thead>
										    <tr class="table-light" >
										      <th scope="col" class="text-center" align="center" colspan="2">제목 :<input type="text" name="n_title"  ></th>
										    </tr>
										  </thead>
										  <tbody>
										  		<tr>
											      <th class="text-center" colspan="2">사진첨부 : <input class="form-control" type="file" id="formFile" name="part_img"/><br> </th>
											    </tr>
											   	<tr>
											      <th class="text-center" colspan="2">내용 :<textarea rows="10" cols="50" name="n_content" ></textarea></th>
											    </tr>
										  </tbody>
										</table>
					        		</form>
				      			</div>
				      			<div class="modal-footer">
				        			</a> <button type="button" class="btn btn-secondary" id="addnotice" >글추가</button>
				        			<button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
				      			</div>
				   			</div>
				  		</div>
					</div> <!-- end 모달 -->
					
				<!-- QnA 글쓰기 눌렀을때 띄울 모달 -->
					<div class="modal fade" id="addNew2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
						<div class="modal-dialog" role="document">
				    		<div class="modal-content"style="height: 690px; width: 535px;">
					      		<div class="modal-header">
					        		<h5 class="modal-title" id="myModalLabel">금댕이</h5>
					        		<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					          			<span aria-hidden="true">&times;</span>
					        		</button>
					      		</div>
				      			<div class="modal-body">
			        				<form id="addQnAPro" action="/admin/addQnAPro?${_csrf.parameterName}=${_csrf.token}" method="post" enctype="multipart/form-data">
					        			<table class="table"  style="color: black;" height="500px" >
										  <thead>
										    <tr class="table-light" >
										      <th scope="col" class="text-center" align="center" colspan="2"> <input type="text" name="q_title" placeholder="제목" ></th>
										    </tr>
										  </thead>
										  <tbody>
											   	<tr>
											      <th class="text-center" colspan="2"><input class="form-control" type="file" id="formFile" name="part_img"/><br> </th>
											    </tr>
											   	<tr>
											      <th class="text-center" colspan="2"><textarea rows="10" cols="50" name="q_content"  placeholder="QnA작성"></textarea></th>
											    </tr>
										  </tbody>
										</table>
					        		</form>
				      			</div>
				      			<div class="modal-footer">
				        			</a> <button type="button" class="btn btn-secondary" id="addQnA" >글쓰기</button>
				        			<button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
				      			</div>
				   			</div>
				  		</div>
					</div> <!-- end 모달 -->
					
				</div>
			  </div>
		  			
		
		<br/><br/><br/><br/><br/><br/><br/><br/>
		</body>

		<form id="pagingForm" action="/admin/QnA">
         	<input type="hidden" name="Num1" value="${pager.cri.pageNum}" />
         	<input type="hidden" name="Number1" value="${npager.cri.pageNumber}" />
         </form>
         
         
         
 <%@ include file="../footer.jsp" %>
	<script type="text/javascript">
		$(document).ready(function(){

			// 모달 띄우는 매서드
		
			let pagingForm = $("#pagingForm");
			//공지사항 글쓰기 눌렀을때 띄울 모달
			//let result ="${result}";
			$("#newBoard1").on("click",function(e){
				e.preventDefault(); 
				console.log("글쓰기 확인 모달.");
				
				$("#addNew1").modal("show");
			});
			
			//공지사항 모달 글쓰기 눌렀을때 정보 보내기
			//let result ="${result}";
			$("#addnotice").on("click",function(e){
				e.preventDefault(); 
				console.log("글쓰기 확인 모달.");
				
				$("#addNoticePro").submit();
			});
			
			
		
			
			
			
			
			
			//QnA 글쓰기 눌렀을때 띄울 모달
			$("#newBoard2").on("click",function(e){
				e.preventDefault(); 
				console.log("글쓰기 확인 모달.");
				$("#addNew2").modal("show");
			});
			
			
			//QnA 모달 글쓰기 눌렀을때 띄울 
			$("#addQnA").on("click",function(e){
				e.preventDefault(); 
				console.log("글쓰기 확인 모달.");
				$("#addQnAPro").submit();
			});
			
			
			
			
			
			
			// 로그아웃 
			$("#logoutBtn").click(function(e){
				e.preventDefault(); 
				$("#logoutForm").submit();
			});
			
		});
	</script>
	






