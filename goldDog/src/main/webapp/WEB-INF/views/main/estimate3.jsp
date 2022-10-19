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
	<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.8.js"></script>
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
                      <div class="card-body">
                        <img class="card-img card-img-left" src="/resources/serverImg/${clientDog.d_img}" width="180" height="240"/>
                      </div>
                      </div>
                      <div class="col-md-4">
                        <div class="card-body">
                        <br >
                          <p class="card-text">이　름　:　${clientDog.d_name} </p> 
                          <p class="card-text">나　이　:　${clientDog.d_age}살 </p> 
                          <p class="card-text">성　별　:　${clientDog.d_gender} </p> 
                          <p class="card-text">종　류　:　${clientDog.d_type} </p> 
                          <p class="card-text">무　게　:　${clientDog.d_weight}kg </p> 
                        </div>
                      </div>
                      	 <div class="col-md-4" id="map" style="width:200px; height:280px;">
                        	<h5 class="card-title">위치</h5>
                        	<!-- <input type="text" value="${clientAddress.a_road}" />  -->
                        	<!-- <div id="map" style="width:200px; height:200px;"></div>  -->
                        </div>
                    </div>
                  </div>
                  
	             
                <div class="card mb-3">
	                 <div class="card-body">
	                   <p class="card-text" ><i class="fa fa-star fa-lg " aria-hidden="true"></i>
	                   		수정된 예약 날짜 : ${estimate.e_date}
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
				<div class="card" style="height: 602px;">
					<div class="card-header">
						<strong class="card-title text-center">결제 명세서</strong>
					</div>
					<div class="card-body">
						<!-- Credit Card -->
						<div id="pay-invoice">
							<div class="card-body">
								<div class="row">
									<div class="col-12">
										<div class="form-group">
											<label for="cc-payment" class="control-label mb-1">기본금액</label>
											<input name="cc-payment" type="text"
												class="form-control" aria-required="true"
												aria-invalid="false" value="${estimate.e_basicprice}"
												readonly>
										</div>
									</div>
								</div>
								<br /> <br /> <br />
								<div class="row">
									<div class="col-6">
										<div class="form-group has-success">
											<label for="cc-name" class="control-label mb-1">추가 사유</label>
											<input name="cc-payment" type="text"
												class="form-control" aria-required="true"
												aria-invalid="false" value="${estimate.e_extra_reason}"
												readonly>
										</div>
									</div>
									<div class="col-6">
										<div class="form-group has-success">
											<label for="cc-name" class="control-label mb-1">추가
												금액(원)</label> <input name="cc-payment" type="text"
												class="form-control" aria-required="true"
												aria-invalid="false" value="${estimate.e_extraprice}"
												readonly>
										</div>
									</div>
								</div>
								<br /> <br /> <br />
								<div class="row">
									<div class="col-12">
										<div class="form-group">
											<label for="cc-payment" class="control-label mb-1">최종
												금액</label> <input id="cc-payment" name="cc-payment" type="text"
												class="form-control" aria-required="true"
												aria-invalid="false" value="${estimate.e_total_price}"
												readonly>
										</div>
									</div>
								</div>
								<!-- 결제 전일때 보이는 -->
								<c:if test="${estimate.e_con==1}">
								<sec:authorize access="hasAnyRole('ROLE_HAIR','ROLE_TRAINER')">
								<div class="col-lg-12">
									<button  type="button" class="btn btn-lg btn-Danger btn-block">
										<span id="payment-button-amount">고객님의 결제를 기다리고 있습니다.</span>
									</button>
								</div>
								</sec:authorize>
								<sec:authorize access="hasRole('ROLE_MEMBER')">
								<div class="row">
									<div class="col-lg-6">
										<button id="dogCheck" type="button" value ="${ estimate.e_no }" onclick="requestPay()" class="btn btn-lg btn-info btn-block">
											<span id="payment-button-amount">결제</span>
										</button>
									</div>
									<div class="col-lg-6">
										<button id="deleteModal"
											class="btn btn-lg btn-danger btn-block">
											<span>견적 취소</span>
										</button>
									</div>
								</div>
								</sec:authorize>
								</c:if>
								<!-- 결제 후 일때 보이는 -->
								<c:if test="${estimate.e_con==2}">
								<sec:authorize access="hasAnyRole('ROLE_HAIR','ROLE_TRAINER')">
								<div class="col-lg-12">
									<button  type="button" class="btn btn-lg btn-info btn-block" id="endEst">
										<span id="payment-button-amount">방문 완료시 눌러주세요</span>
									</button>
								</div>
								</sec:authorize>
								<sec:authorize access="hasRole('ROLE_MEMBER')">
								<div class="col-lg-12">
									<button  type="button" class="btn btn-lg btn-info btn-block">
										<span id="payment-button-amount">방문을 기다리고 있습니다.</span>
									</button>
								</div>
								</sec:authorize>
								</c:if>
								<!-- 방문 후 일때 보이는 -->
								<c:if test="${estimate.e_con==3}">
								<sec:authorize access="hasAnyRole('ROLE_HAIR','ROLE_TRAINER')">
								<div class="col-lg-12">
									<button  type="button" class="btn btn-lg btn-info btn-block" >
										<span id="payment-button-amount">방문 완료</span>
									</button>
								</div>
								</sec:authorize>
								<sec:authorize access="hasRole('ROLE_MEMBER')">
								<div class="col-lg-12">
									<button  type="button" class="btn btn-lg btn-info btn-block" id="endEstMember">
										<span id="payment-button-amount">방문 완료 확인</span>
									</button>
									<div class="col-12 col-md-9"><small class="form-text text-muted">매니저 방문 완료시 확인을 눌러주세요</small></div>
								</div>
								</sec:authorize>
								</c:if>
								<!-- 방문 최종 완료 일때 보이는 -->
								<c:if test="${estimate.e_con==4}">
								<sec:authorize access="hasAnyRole('ROLE_HAIR','ROLE_TRAINER')">
								<div class="col-lg-12">
										<span id="payment-button-amount">의뢰 완료</span>
								</div>
								</sec:authorize>
								<sec:authorize access="hasRole('ROLE_MEMBER')">
										<span id="payment-button-amount">의뢰 완료</span>
								</sec:authorize>
								</c:if>
							</div>
						</div>
					</div>
				</div>
			</div>
			

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
	        			<button type="button" class="btn btn-info" id="deleteEst" >견적취소</button>
	        			<button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
	      			</div>
	   			</div>
	  		</div>
		</div> <!-- end 모달 -->
		
		
		<!--견적 완료 눌렀을때 띄울 모달 -->
		<div class="modal fade" id="endEstModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
	    		<div class="modal-content">
		      		<div class="modal-header">
		        		<h5 class="modal-title" id="myModalLabel">고객 방문 완료</h5>
		        		<button type="button" class="close" data-dismiss="modal" aria-label="Close">
		          			<span aria-hidden="true">&times;</span>
		        		</button>
		      		</div>
	      			<div class="modal-body">
        				견적요청을 완료하시겠습니까?
	      			</div>
	      			<div class="modal-footer">
	        			<button type="button" class="btn btn-info" id="endEstPro" >방문완료</button>
	        			<button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
	      			</div>
	   			</div>
	  		</div>
		</div> <!-- end 모달 -->
		
		<!--매니저 방문완료 눌렀을때 띄울 모달(맴버용) -->
		<div class="modal fade" id="endEstModalMember" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
	    		<div class="modal-content">
		      		<div class="modal-header">
		        		<h5 class="modal-title" id="myModalLabel">매니저 방문 완료</h5>
		        		<button type="button" class="close" data-dismiss="modal" aria-label="Close">
		          			<span aria-hidden="true">&times;</span>
		        		</button>
		      		</div>
	      			<div class="modal-body">
        				매니저 방문을 완료처리 하시겠습니까?
        				서비스가 마음에 안드셨다면 완료를 누르지 마시고 고객센터에 문의해주세요..
	      			</div>
	      			<div class="modal-footer">
	        			<button type="button" class="btn btn-info" id="endEstPro1" >방문완료</button>
	        			<button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
	      			</div>
	   			</div>
	  		</div>
		</div> <!-- end 모달 -->


 <%@ include file="../footer.jsp" %>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=57677f6ef3181c4bc8be716fbdc8870e&libraries=services"></script>
<script type="text/javascript">

	$(document).ready(function(){
		
		
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
		
		//매니저가 훈련 완료시(훈련사용)
		$("#endEst").on("click",function(e){
			e.preventDefault(); 
			console.log("취소 확인 모달.");
			$("#endEstModal").modal("show");
		});
		
		$("#endEstPro").on("click",function(e){
			e.preventDefault(); 
			console.log(e_no+"e_no 확인.");
			pagingForm.append("<input type='hidden' name='e_no' value='" + e_no+ "' />"); 
			// pagingForm의 action 속성값을 /board/read로 변경
			pagingForm.attr("action", "/main/endEstPro"); 
			// read로 이동하기(form으로 요청) 
			pagingForm.submit(); 				
			
		});
		
		//매니저 방문 완료시(고객용)
		$("#endEstMember").on("click",function(e){
			e.preventDefault(); 
			console.log("취소 확인 모달.");
			$("#endEstModalMember").modal("show");
		});
		
		$("#endEstPro1").on("click",function(e){
			e.preventDefault(); 
			console.log(e_no+"e_no 확인.");
			pagingForm.append("<input type='hidden' name='e_no' value='" + e_no+ "' />"); 
			// pagingForm의 action 속성값을 /board/read로 변경
			pagingForm.attr("action", "/main/endEstModalMember"); 
			// read로 이동하기(form으로 요청) 
			pagingForm.submit(); 				
			
		});
		
	});
		
</script>
<script>

	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	    mapOption = {
	        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
	        level: 5 // 지도의 확대 레벨
	    };  
	
	// 지도를 생성합니다    
	var map = new kakao.maps.Map(mapContainer, mapOption); 
	
	// 주소-좌표 변환 객체를 생성합니다
	var geocoder = new kakao.maps.services.Geocoder();
	
	// 주소로 좌표를 검색합니다
	geocoder.addressSearch("${clientAddress.a_road}", function(result, status) {
	
	    // 정상적으로 검색이 완료됐으면 
	     if (status === kakao.maps.services.Status.OK) {
	
	        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
	
	        // 결과값으로 받은 위치를 마커로 표시합니다
	        var marker = new kakao.maps.Marker({
	            map: map,
	            position: coords
	        });
	
	        // 인포윈도우로 장소에 대한 설명을 표시합니다
	        var infowindow = new kakao.maps.InfoWindow({
	            content: '<div style="width:150px;text-align:center;padding:6px 0;">${clientDog.d_name} 위치</div>'
	        });
	        infowindow.open(map, marker);
	
	        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
	        map.setCenter(coords);
	    } 
	});    
</script>
	
<script type="text/javascript" src="/resources/payments.js"></script>

<script type="text/javascript">
let eno = "${estimate.e_no}";
let econ = "${estimate.e_con}";
console.log(eno);
console.log(econ);
</script>
</body>
</html>




