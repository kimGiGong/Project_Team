<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="en"><head>
    <meta charset="UTF-8">
	
	 <style>
	.fa-star:before {
    content: "\f005";
    color: #48c1bd;
	}
	.fa-vcard:before, .fa-address-card:before {
    color: #6b6b6b;
	}

	</style>
</head>
	
	 
<body>
		<div>
		<jsp:include page="../header.jsp"/>
		</div>
		
	<!--  헤더 END -->
	 <div class="container">
	   </br></br></br></br></br></br></br></br>
	   <div class="row mb-5">
                <div class="col-md-8">
                
                  <div class="card mb-3">
                    <div class="row g-0">
                      <div class="col-md-4">
                        <img class="card-img card-img-left" src="/resources/serverImg/${clientDog.d_img}" width="150" height="150"/>
                      </div>
                      <div class="col-md-8">
                        <div class="card-body">
                          <h5 class="card-title">견적서</h5>
                          <p class="card-text">이 름 : ${clientDog.d_name} </p> 
                          <p class="card-text">나 이 : ${clientDog.d_age} </p> 
                          <p class="card-text">성 별 : ${clientDog.d_gender} </p> 
                          <p class="card-text">종 류 : ${clientDog.d_type} </p> 
                          <p class="card-text">무 게 : ${clientDog.d_weight} </p> 
                        </div>
                      </div>
                    </div>
                  </div>
                  
	             
                <div class="card mb-3">
	                 <div class="card-body">
	                   <p class="card-text" ><i class="fa fa-star fa-lg " aria-hidden="true"></i>
	                   		원하는 예약 날짜 : ${estimate.e_date}
	                   </p>
	                 </div>
	             </div>
	             
                <div class="card mb-3">
	                 <div class="card-body">
	                   <p class="card-text" ><i class="fa fa-star fa-lg " aria-hidden="true"></i>
	                   		원하는 서비스 : ${estimate.e_service}
	                   </p>
	                 </div>
	             </div>
	             
                <div class="card mb-3">
	                 <div class="card-body">
	                   <p class="card-text" ><i class="fa fa-star fa-lg " aria-hidden="true"></i>
	                   		출장시 주의사항 
	                   </p>
	                   	<textarea class="form-control" rows="3" name="e_note" readonly>${estimate.e_note}</textarea>
	                 </div>
	             </div>
                </div>
                
                
                
                <div class="col-md-4">
                   <div class="card" style="height:602px;">
                          <div class="card-header">
                              <strong class="card-title text-center" >결제 명세서</strong>
                          </div>
                          <div class="card-body">
                              <!-- Credit Card -->
                              <div id="pay-invoice">
                                  <div class="card-body">
                                  	<form action="">
                                  		<br/><br/>
                                  		<div class="row">
                                  			<div class="col-12">
                                  			   <div class="card mb-3">
								                 <div class="card-body">
								                   <p class="card-text" ><i class="fa fa-star fa-lg " aria-hidden="true"></i>
								                   매니저가 요청사항을 확인중 입니다.
								                   </p>
								                 </div>
								             </div>
							             	</div>
                                          </div>
                                          <br/><br/><br/><br/><br/><br/>
                                          <br/><br/><br/><br/><br/><br/>
                                          <div class="row">
	                                          	<div class="col-lg-12">
	                                               <button id="deleteModal"  class="btn btn-lg btn-danger btn-block">
	                                                  <span id="payment-button-amount">견적 취소하기</span>
	                                              </button>
	                                          </div>
                                          </div>
                                      </form>
                                  </div>
                              </div>
                          </div>
              			</div>
             			</div>
              
              
          </br></br></br></br></br></br></br></br>
          	</div><!--/.row-->
          </div><!--/.con-->
	
			 <form id="pagingForm" action="" method="post">
			 	  <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
		     </form>



		<!--삭제 눌렀을때 띄울 모달 -->
		<div class="modal fade" id="addNew" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
	    		<div class="modal-content">
		      		<div class="modal-header">
		        		<h5 class="modal-title" id="myModalLabel">견적서 취소</h5>
		        		<button type="button" class="close" data-dismiss="modal" aria-label="Close">
		          			<span aria-hidden="true">&times;</span>
		        		</button>
		      		</div>
	      			<div class="modal-body">
        				견적요청을 취소하시겠습니까?
	      			</div>
	      			<div class="modal-footer">
	        			</a> <button type="button" class="btn btn-secondary" id="deleteEst" >견적취소</button>
	        			<button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
	      			</div>
	   			</div>
	  		</div>
		</div> <!-- end 모달 -->

 <%@ include file="../footer.jsp" %>
 
	<script type="text/javascript">
		$(document).ready(function(){
				
			let e_no ="${estimate.e_no}"
			let pagingForm=$("#pagingForm");
			
			$("#deleteEst").on("click",function(e){
				e.preventDefault(); 
				console.log(e_no+"e_no 확인.");
				pagingForm.append("<input type='hidden' name='e_no' value='" + e_no+ "' />"); 
				// pagingForm의 action 속성값을 /board/read로 변경
				pagingForm.attr("action", "/main/deleteEstPro"); 
				// read로 이동하기(form으로 요청) 
				pagingForm.submit(); 				
				
			});

			
			$("#deleteModal").on("click",function(e){
				e.preventDefault(); 
				console.log("취소 확인 모달.");
				$("#addNew").modal("show");
			});
			
			
			
			
			
			
			
			
		});
		</script>
	






