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
                   <div class="card" >
                          <div class="card-header">
                              <strong class="card-title text-center" >결제 명세서</strong>
                          </div>
                          <div class="card-body">
                              <!-- Credit Card -->
                              <div id="pay-invoice">
                                  <div class="card-body">
                                  	<form action="/main/estimate2Pro" id="sendEstPro" method="post">
                                  		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                                  		<input type="hidden" name="e_no" value="${estimate.e_no}"/>
                                  		<div class="row">
                                  			<div class="col-12">
	                                          <div class="form-group">
	                                              <label for="cc-payment" class="control-label mb-1">기본금액</label>
	                                              <input id="cc-payment" name="cc-payment" type="text" class="form-control" aria-required="true" aria-invalid="false" value="${trainer.t_price}" readonly>
	                                          </div>
	                                      </div>
                                          </div>
                                          <br/>
                                          <div class="row">
                                           <div class="col-6">
		                                          <div class="form-group has-success">
		                                              <label for="cc-name" class="control-label mb-1">추가 사유</label>
		                                              <input id="cc-payment" name="e_extra_reason" type="text" class="form-control" aria-required="true" aria-invalid="false" value="없음" >
		                                          </div>
	                                          </div>
	                                          
	                                          <div class="col-6">
		                                          <div class="form-group has-success">
		                                              <label for="cc-name" class="control-label mb-1">추가 금액(원)</label>
		                                              <input id="addPrice" name="e_extraprice" type="text" class="form-control" aria-required="true" aria-invalid="false"  >
		                                          </div>
	                                          </div>
                                          </div> 
                                          <div class="row justify-content-md-center">
	                                          	<div class="col-lg-3">
	                                               <button id="pulsEst"  class="btn btn-sm btn-warning btn-block">
	                                                  <span id="payment-button-amount">+</span>
	                                              </button>
	                                          </div>
                                          </div>
                                          <br/><br/>
                                          <div class="row">
	                                          	<div class="col-lg-12">
	                                               <button id="Check"  class="btn btn-lg btn-info btn-block">
	                                                  <span id="payment-button-amount">최종 견적 보내기</span>
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
	
	
	
		<!--최종견적 눌렀을때 띄울 모달 -->
		<div class="modal fade" id="addNew" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
	    		<div class="modal-content">
		      		<div class="modal-header">
		        		<h5 class="modal-title" id="myModalLabel">견적서 최종</h5>
		        		<button type="button" class="close" data-dismiss="modal" aria-label="Close">
		          			<span aria-hidden="true">&times;</span>
		        		</button>
		      		</div>
	      			<div class="modal-body">
        				견적요청 보내시겠습니까?
	      			</div>
	      			<div class="modal-footer">
	        			</a> <button type="button" class="btn btn-secondary" id="sendEst" >보내기</button>
	        			<button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
	      			</div>
	   			</div>
	  		</div>
		</div> <!-- end 모달 -->
	
	
	
	
	


 <%@ include file="../footer.jsp" %>
 
	<script type="text/javascript">
	
	//dogInsert
	$(document).ready(function(){
		//등록 or 추가 모달 눌렀을때 띄울 
	
		$("#Check").on("click",function(e){
			e.preventDefault(); 
			console.log("최종 확인 모달.");
			$("#addNew").modal("show");
		});
		
		$("#sendEst").on("click",function(e){
			let addPrice = $("#addPrice").val();
			e.preventDefault(); 
			console.log(addPrice);
			console.log("최종 확인.");
			
			if(addPrice==0) {
				alert("추가금액을 입력해 주세요...");
			}else{
				$("#sendEstPro").submit(); 				
			}
				
				
		});
		
		
		
	});
		
	</script>
	






