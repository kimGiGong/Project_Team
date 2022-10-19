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
                      	<div class="card-body">
	                        <img class="card-img card-img-left" src="/resources/serverImg/${clientDog.d_img}" width="180" height="240"/>
                      	</div>
                      </div>
                      
                      <div class="col-md-4">
                        <div class="card-body">
                          <!-- <h5 class="card-title">견적서</h5>  -->
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
	                                              <input id="cc-payment" name="cc-payment" type="text" class="form-control" aria-required="true" aria-invalid="false" value="${estimate.e_basicprice}" readonly>
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
		                                              <input id="addPrice" name="e_extraprice" type="number" class="form-control" aria-required="true" aria-invalid="false" value=0 >
		                                          </div>
	                                          </div>
                                          </div> 
                                          	<div class="col-12">
	                                              <label for="cc-name" class="control-label mb-1">훈련 진행할 날짜</label>
                                               <input class="form-control" type="datetime-local" name="t_date" value="${today}" id="html5-datetime-local-input"/>
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
	        			</a> <button type="button" class="btn btn-info" id="sendEst" >보내기</button>
	        			<button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
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
			
			$("#sendEstPro").submit(); 				
				
				
		});
		
		
		
	});
		
	</script>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=57677f6ef3181c4bc8be716fbdc8870e&libraries=services"></script>
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





