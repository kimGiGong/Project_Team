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
					  	<c:forEach var="i" begin="0" end="4" step="1" >
						    <tr >
						      <th scope="row">${notice[i].n_no}</th>
						      <td colspan="3" width="350"><a href="noticeForm?n_no=${notice[i].n_no}" > ${notice[i].n_title}</a></td>
						      <td><fmt:formatDate pattern="yy-MM-dd" value="${notice[i].n_date}"/></td>
						      <td>조회수 : ${notice[i].n_readcount}</td>
						    </tr>
					  	</c:forEach>
					  </tbody>
					</table>
					<sec:authorize access="hasRole('ROLE_ADMIN')">
						<input type="button" class="btn float-right btn-info" id="newBoard1" value="글쓰기">
					</sec:authorize>
					   <div>
							<ul class="pagination justify-content-md-center">
								<c:if test="${pager.prev}">
									<li class="page-item">
										<a class="page-link" href="${pager.startPage-1}" tabindex="-1">Previous</a>
									</li>
								</c:if>
								<c:forEach var="num" begin="${pager.startPage}" end="${pager.endPage}" >
									<li class="page-item ${pager.cri.pageNum == num ? "active":""}">
										<a class="page-link" href="${num}">${num}</a>
									</li>
								</c:forEach>
								<c:if test="${pager.next}">
									<li class="page-item">
										<a class="page-link" href="${pager.endPage+1}">Next</a>
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
					  	<c:forEach var="i" begin="0" end="4" step="1" >
						   <tr >
						      <th scope="row">${QnA[i].q_no}</th>
						      <td colspan="3" width="350"><a href="QnAForm?q_no=${QnA[i].q_no}" >${QnA[i].q_title}</a> </td>
						      <td><fmt:formatDate pattern="yy-MM-dd" value="${QnA[i].q_date}"/></td>
						      <td>조회수 : ${QnA[i].q_readcount}</td>
						    </tr>
					  	</c:forEach>
					  </tbody>
					</table>
					<sec:authorize access="isAuthenticated()">
						<input type="button" class="btn float-right btn-info" id="newBoard2" value="글쓰기">
					</sec:authorize>
					   <div >
							<ul class="pagination justify-content-md-center">
								<c:if test="${pager.prev}">
									<li class="page-item">
										<a class="page-link" href="${pager.startPage-1}" tabindex="-1">Previous</a>
									</li>
								</c:if>
								<c:forEach var="num" begin="${pager.startPage}" end="${pager.endPage}" >
									<li class="page-item ${pager.cri.pageNum == num ? "active":""}">
										<a class="page-link" href="${num}">${num}</a>
									</li>
								</c:forEach>
								<c:if test="${pager.next}">
									<li class="page-item">
										<a class="page-link" href="${pager.endPage+1}">Next</a>
									</li>
								</c:if>
							</ul>
						</div>
				  </div>
				</div>
				
				
				
				<!-- 공지사항 글쓰기 눌렀을때 띄울 모달 -->
					<div class="modal fade" id="addNew1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
						<div class="modal-dialog" role="document">
				    		<div class="modal-content">
					      		<div class="modal-header">
					        		<h5 class="modal-title" id="myModalLabel">금댕이</h5>
					        		<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					          			<span aria-hidden="true">&times;</span>
					        		</button>
					      		</div>
				      			<div class="modal-body">
				        			새로운 공지사항 글쓰는 창
				      			</div>
				      			<div class="modal-footer">
				        			</a> <button type="button" class="btn btn-secondary" id="goLogin" >확인</button>
				        			<button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
				      			</div>
				   			</div>
				  		</div>
					</div> <!-- end 모달 -->
					
				<!-- QnA 글쓰기 눌렀을때 띄울 모달 -->
					<div class="modal fade" id="addNew2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
						<div class="modal-dialog" role="document">
				    		<div class="modal-content">
					      		<div class="modal-header">
					        		<h5 class="modal-title" id="myModalLabel">금댕이</h5>
					        		<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					          			<span aria-hidden="true">&times;</span>
					        		</button>
					      		</div>
				      			<div class="modal-body">
				        			새로운 QnA 글쓰는 창
				      			</div>
				      			<div class="modal-footer">
				        			</a> <button type="button" class="btn btn-secondary" id="goLogin" >확인</button>
				        			<button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
				      			</div>
				   			</div>
				  		</div>
					</div> <!-- end 모달 -->
					
				</div>
			  </div>
		  			
		
		<br/><br/><br/><br/><br/><br/><br/><br/>
		</body>

		<form id="pagingForm" action="/admin/QnAForm">
         	<input type="hidden" name="pageNum" value="${pager.cri.pageNum}" />
         </form>
         
         
         
 <%@ include file="../footer.jsp" %>
	<script type="text/javascript">
		$(document).ready(function(){

			// 모달 띄우는 매서드
		
			
			//공지사항 글쓰기 눌렀을때 띄울 모달
			//let result ="${result}";
			$("#newBoard1").on("click",function(e){
				e.preventDefault(); 
				console.log("글쓰기 확인 모달.");
				$("#addNew1").modal("show");
			});

			
			//QnA 글쓰기 눌렀을때 띄울 모달
			$("#newBoard2").on("click",function(e){
				e.preventDefault(); 
				console.log("글쓰기 확인 모달.");
				$("#addNew2").modal("show");
			});
			
			
			
			
			
			
			// 로그아웃 
			$("#logoutBtn").click(function(e){
				e.preventDefault(); 
				$("#logoutForm").submit();
			});
			
		});
	</script>
	






