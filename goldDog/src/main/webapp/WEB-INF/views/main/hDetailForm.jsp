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
    color: #dc3545;
	}
	.fa-vcard:before, .fa-address-card:before {
    color: #dc3545;
}

</style>
    
    
    
    
</head>
<body>
		<div>
		<jsp:include page="../header.jsp"/>
		</div>
	<!--  헤더 END -->
	
	
	
	
	 < <div class="container">
	  <div class="row">
	  <div class="col-lg-8 ">
               <div class="col-md ">
                 <div class="card mb-3 border border-primary mb-3">
                   <div class="row g-0">
                     <div class="col-md-4">
                      <img src="/resources/serverImg/${member.m_img}" width="185px" height="185px" style="border-radius:1.5rem;"/>
                     </div>
                     <div class="col-md-8">
                       <div class="card-body">
                         <h5 class="card-title">${member.m_nick}</h5>
                         <p class="card-text">
                          	${hairstylist.h_self}
                         </p> 
                       </div>
                     </div>
                   </div>
                 </div>
               </div>    
             
              <div class="col-lg-12">
               <div class="card shadow-none bg-transparent border border-primary mb-3">
                 <div class="card-body">
                   <h5 class="card-title">판매정보</h5>
                   <p class="card-text">${hairstylist.h_sel}</p>
                 </div>
               </div>
             </div>
             
              <div class="col-lg-12">
               <div class="card shadow-none bg-transparent border border-primary mb-3">
                 <div class="card-body">
                   <h5 class="card-title " style="text-align: left;">미용사의 BEST 리뷰</h5>
                   <p class="card-text" style="text-align: right;" ><i class="fa fa-star fa-lg " aria-hidden="true"></i>(${hairstylist.h_RAvg})${hairstylist.h_RTotal}</p>
                 </div>
               </div>
             </div>
             
             
             
             
             
             
            <c:if test="${reviewCount==0}">
             <c:forEach var="i" begin="0" end="0" step="1" >
             <div class="col-lg-12 ">
                 <div class="card mb-3">
                   <div class="row g-0">
                     <div class="col-md-12">
                       <div class="card-body">
                         <h5 class="card-title">
                         <p><i class="fa fa-star fa-lg " aria-hidden="true"></i>가장먼저 리뷰를 남겨주세요!</p>
						</h5>
                       </div>
                     </div>
                   </div>
                 </div>
               </div>   
             	</c:forEach>
             	</c:if>
             	
             	
             	
             <c:if test="${reviewCount<3&&reviewCount>0}">
             <c:forEach var="i" begin="0" end="${reviewCount-1}" step="1" >
             <div class="col-lg-12 ">
                 <div class="card mb-3">
                   <div class="row g-0">
                     <div class="col-md-4">
                      <img src="/resources/serverImg/${r_img}" width="120px" height="120px" style="border-radius:1.5rem;"/>
                     </div>
                     <div class="col-md-8">
                       <div class="card-body">
                         <h5 class="card-title">${bestReviewUser[i].m_nick}
                         <c:forEach  begin="1" end="${review[i].r_score}" step="1" >
                         	<i class="fa fa-star fa-lg " aria-hidden="true"></i>
                         </c:forEach>
                         <fmt:formatDate pattern="yy-MM-dd" value="${review[i].r_date}"/>
						</h5>
                         <p class="card-text">${review[i].r_text} </p>
                       </div>
                     </div>
                   </div>
                 </div>
               </div>   
             	</c:forEach>
             	</c:if>
             	
           <c:if test="${reviewCount>=3}">
             <c:forEach var="i" begin="0" end="2" step="1" >
             <div class="col-lg-12 ">
                 <div class="card mb-3">
                   <div class="row g-0">
                     <div class="col-md-4">
                      <img src="/resources/serverImg/${r_img}" width="120px" height="120px" style="border-radius:1.5rem;"/>
                     </div>
                     <div class="col-md-8">
                       <div class="card-body">
                         <h5 class="card-title">${bestReviewUser[i].m_nick}
                         <c:forEach  begin="1" end="${review[i].r_score}" step="1" >
                         	<i class="fa fa-star fa-lg " aria-hidden="true"></i>
                         </c:forEach>
                         <fmt:formatDate pattern="yy-MM-dd" value="${review[i].r_date}"/>
						</h5>
                         <p class="card-text">${review[i].r_text} </p>
                       </div>
                     </div>
                   </div>
                 </div>
               </div>   
             	</c:forEach>
             	</c:if>
             	<br/><br/><br/>
               </div>   
             
	  
                  <div class="col-lg-4 ">
                     <div class="card">
                         <div class="card-header">
                             <strong class="card-title">미용사 정보</strong>
                         </div>
                         <div class="card-body">
                             <!-- Credit Card -->
                             <div id="pay-invoice">
                                 <div class="card-body">
                                     <div class="card-title">
                                         <h3 class="text-center">Pay Invoice</h3>
                                     </div>
                                     <hr>
                                     <form action="#" method="post" novalidate="novalidate">
                                         <div class="form-group text-center">
                                             <ul class="list-inline">
                                                 <li class="list-inline-item"><i class="text-muted fa fa-cc-visa fa-2x"></i></li>
                                                 <li class="list-inline-item"><i class="fa fa-cc-mastercard fa-2x"></i></li>
                                                 <li class="list-inline-item"><i class="fa fa-cc-amex fa-2x"></i></li>
                                                 <li class="list-inline-item"><i class="fa fa-cc-discover fa-2x"></i></li>
                                             </ul>
                                         </div>
                                         <div class="form-group">
                                             <label for="cc-payment" class="control-label mb-1">기본금액</label>
                                             <input id="cc-payment" name="cc-payment" type="text" class="form-control" aria-required="true" aria-invalid="false" value="${hairstylist.h_price}" readonly>
                                         </div>
                                         <div class="form-group has-success">
                                             <label for="cc-name" class="control-label mb-1">원하는 날짜</label>
                                             
	                                        <div class="mb-3 row">
												<input class="form-control newDate" type="datetime-local" name="e_date" value="${today}" id="html5-datetime-local-input" />						                          
					                      	</div>       
					                      
                                             <span class="help-block field-validation-valid" data-valmsg-for="cc-name" data-valmsg-replace="true"></span>
                                         </div>
                                         <div class="form-group">
                                             <label for="cc-payment" class="control-label mb-1">보유자격증</label>
                                             <input id="cc-payment" name="cc-payment" type="text" class="form-control" aria-required="true" aria-invalid="false" value="${hairstylist.h_license}" readonly>
                                         </div>
                                         <div class="form-group">
                                             <label for="cc-payment" class="control-label mb-1">경력</label>
                                             <input id="cc-payment" name="cc-payment" type="text" class="form-control" aria-required="true" aria-invalid="false" value="${hairstylist.h_career}년" readonly>
                                         </div>
                                         <div>
                                              <button id="dogCheck" type="submit" class="btn btn-lg btn-danger btn-block">
                                                 <i class="fa fa-bell" aria-hidden="true"></i></i>&nbsp;
                                                 <span id="payment-button-amount">협의하기</span>
                                                 <span id="payment-button-sending" style="display:none;">Sending…</span>
                                             </button>
                                             <div class="col-12 col-md-9"><small class="form-text text-muted">협의는 결제가 되지 않습니다.</small></div>
                                         </div>
                                     </form>
                                 </div>
                             </div>

                         </div>
                     </div> <!-- .card -->
                 </div><!--/.col-->
                 
                 </div><!--/.row-->
                 </div><!--/.con-->
                 
                  
                  
                  
	<!-- 펫 등록 되어있을시 띄울 모달 -->
	<div class="modal fade" id="yesPet" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
    		<div class="modal-content">
	      		<div class="modal-header">
	        		<h5 class="modal-title" id="myModalLabel">내 강아지 선택</h5>
	        		<button type="button" class="close" data-dismiss="modal" aria-label="Close">
	          			<span aria-hidden="true">&times;</span>
	        		</button>
	      		</div>
      			<div class="modal-body">
      				<form id="addDogInfo" action="/main/tmain" method="post" >
      				 	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
      				  	<input type="hidden" name="h_m_no" value="${hairstylist.m_no}"/>
   					  	<input type="hidden" name="h_no" value="${hairstylist.h_no}" />
     					<input type="hidden" name="m_no" value="${m_no}"/>
     					
      				<p>1.내주소를 선택해 주세요</p>
      				
      				<c:if test="${(addrSize-1)>=0}">
	      				<c:forEach var="i" begin="0" end="${addrSize-1}" step="1">
		       				<input type="radio" name="a_no" value="${address[i].a_no}"/>${address[i].a_name} : ${address[i].a_road} <br/>
	      				</c:forEach>
      				</c:if>
      				<c:if test="${(addrSize-1)<0}">
      					<p>등록된 주소가 없습니다.</p>
	        			<button type="button" class="btn btn-secondary" id="addAddress" >추가하러가기</button>
      				</c:if>
      				
      				<p>--------------------------------</p>
      				<p>2.내강아지를 선택해 주세요</p>
      				<c:forEach var="i" begin="0" end="${petSize-1}" step="1">
	       				<input type="radio" name="d_no" value="${d_no[i]}"/>${petName[i]} <br/>
      				</c:forEach>
      				<p>--------------------------------</p>
      				<p>3.어떤 미용을 원하시나요</p>
	       				<input type="radio" name="e_service" value="전체미용" class="radio-val1" />전체미용<br/>
	       				<input type="radio" name="e_service" value="부분미용" class="radio-val1" />부분미용 <br/>
	       				<input type="radio" name="e_service" value="위생 미용" class="radio-val1" />위생 미용 <br/>
	       				<input type="radio" name="e_service" value="기타 교육" class="radio-val" />기타 <br/>
	       				<input type="text" name="e_service"  class="radio-value-detail" placeholder="기타사항을 입력해주세요" disabled="true" /> <br/>
      				<p>--------------------------------</p>
      				<p>4.출장시 주의사항을 적어주세요</p>
						<textarea class="form-control" rows="3" name="e_note" placeholder="ex)강아지가 사람을 무서워해요" ></textarea>
					</form>
      			</div>
      			<div class="modal-footer">
        			<button type="button" class="btn btn-primary" id="addDogInfoSubmit" >제출</button>
      			</div>
   			</div>
  		</div>
	</div> <!-- end 모달 -->
	
	
	<!-- 펫 등록 안되어있을시 띄울 모달 -->
	<div class="modal fade" id="noPet" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
    		<div class="modal-content">
	      		<div class="modal-header">
	        		<h5 class="modal-title" id="myModalLabel">금댕이</h5>
	        		<button type="button" class="close" data-dismiss="modal" aria-label="Close">
	          			<span aria-hidden="true">&times;</span>
	        		</button>
	      		</div>
      			<div class="modal-body">
        			등록된 펫이 없습니다. 등록하러 가시겠습니까?
      			</div>
      			<div class="modal-footer">
        			<button type="button" class="btn btn-secondary" id="go" >등록하러가기</button>
        			<button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
      			</div>
   			</div>
  		</div>
	</div> <!-- end 모달 -->
	
	<!-- 펫 등록 안되어있을시 띄울 모달 -->
	<div class="modal fade" id="noId" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
    		<div class="modal-content">
	      		<div class="modal-header">
	        		<h5 class="modal-title" id="myModalLabel">금댕이</h5>
	        		<button type="button" class="close" data-dismiss="modal" aria-label="Close">
	          			<span aria-hidden="true">&times;</span>
	        		</button>
	      		</div>
      			<div class="modal-body">
        			로그인 후 이용해 주세요
      			</div>
      			<div class="modal-footer">
        			<button type="button" class="btn btn-secondary" id="goLogin" >확인</button>
        			<button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
      			</div>
   			</div>
  		</div>
	</div> <!-- end 모달 -->
	
	
	
	  <form id="addPet" action="/board/list">
       	<input type="hidden" name="h_m_no" value="${hairstylist.h_no}"/>
      </form>
       
	
	


 <%@ include file="../footer.jsp" %>
 
	<script type="text/javascript">
		$(document).ready(function(){
			
			// 모달 띄우는 매서드
			function modalCheck(result){
				if(result =='0'){
					$("#noPet").modal("show");
				}else if(result =='1'){
					$("#yesPet").modal("show");	
				}else if(result =='2'){
					$("#noId").modal("show");	
				}	
			}
			
			
			//참고중 끝나고 지워야함
			//등록 후 인풋란에 내용 없애기
			$("#reply").val("");
			let result="${result}"
			let modalContainer =$(".modal-body"); // 모달 몸체 담을 컨테이너					
			//사용자가 다음을 입력했을때 모달 수정 해줄것
			function makeList(result){
				console.log("addPetInfo!!!!!!!!!"+result.length);
					
				if(result ==null || result.length ==0){
					 
					modalContainer.html("<p>어떤 미용을 원하시나요?</p>");
					modalContainer.html("<p>댓글이 없습니다</p>");
					return; // makeList 함수 강제 종료!
				}
				
				//댓글이 있으니 뿌려주는곳
				let str = "";
				for(let i = 0 ; i<result.length ; i++){
					
						str +=  "<div class='reply_li'><div class='replyer_reg_ctn'>";
						str +=  "<div class='replyer_div'>"+result[i].replyer+"</div>";
						str +=  "<div class='replyReg_div'>"+timeFormat(result[i].reg)+"</div></div>";
						str +=  "<div><div class='reply_div'>"+result[i].reply+"</div>";
						
						// 로그인 된 상황에서 보여줘야 , 댓글 단 사람이 로그인한 id 와 같으면 보여주기
						str +="<sec:authorize access='isAuthenticated()'>";
							if(username ==result[i].replyer){ // 댓글 작성자가 로그인한 사람과 동일하면 
								str += 	"<button class='btn btn-info replyBtn' data-rno='"+result[i].repno+"' data-service='modify'>수정</button>";								
								str +=	"<button class='btn btn-warning replyBtn' data-rno='"+result[i].repno+"' data-service='delete'>삭제</button>";
							}
						str +="</sec:authorize></div></div>";
				} 
					replyContainer.html(str); 	//html 부착 
				
			}
			
			
			//협의하기 눌렀을때 애견정보가 있는지 없는지
			//let result ="${result}";
			$("#dogCheck").on("click",function(e){
				e.preventDefault(); 
				console.log("펫등록확인모달.");
				let result="${pet}"
				
				modalCheck(result);
			});
			
			// 모달 확인 누르면 이동하는 처리
			let	addPet = $("#addPet")
			$("#go").on("click",function(e){
				console.log("펫등록하러간다.");
				addPet.attr("action","/mypage");
				addPet.submit();
			});
			
			// 주소 없을때 등록하러가는 버튼 활성화
			$("#addAddress").on("click",function(e){
				console.log("주소 등록하러간다잇.");
				addPet.attr("action","/mypage");
				addPet.submit();
			});
			
			
			$("#goLogin").on("click",function(e){
				console.log("아이디가 없군.");
				addPet.attr("action","/member/login");
				addPet.submit();
			});
			
			
			//애견정보 보낼때 작동하는 코드
			let	addDogInfo = $("#addDogInfo")
			$("#addDogInfoSubmit").on("click",function(e){
				console.log("정보를 보낸다 .");
				let newDate=$(".newDate").val();
				addDogInfo.append("<input type='hidden' name='e_date' value='" + newDate+ "' />");
				addDogInfo.attr("action","/main/insertHEst");
				
				addDogInfo.submit();
			});
		
			
			//버튼 클릭했을 때 기타 활성화
			 $('.radio-val').on('click',function () {
		           var check = $('.radio-val').val();

					if(check=='기타 교육'){
						 $('.radio-value-detail').attr('disabled', false);
					}
		        });
			
			//버튼 클릭했을 때 기타가 아니면 초기화
			 $('.radio-val1').on('click',function () {
		           var check = $('.radio-val1').val();
					 if(check!='기타 교육'){
						$('.radio-value-detail').val("");
						$('.radio-value-detail').attr('disabled', true);
					}
		        });
			
			
			
		});
		
		
		
		
		
		</script>
	






