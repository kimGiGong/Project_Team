<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>

<head>
  <!-- Basic -->
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <!-- Mobile Metas -->
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  <!-- Site Metas -->
  <meta name="keywords" content="" />
  <meta name="description" content="" />
  <meta name="author" content="" />
  
  <link rel="shortcut icon" href="/resources/feane/images/favicon.png" type="">
	
  <title> 금댕이 </title>

  <!-- bootstrap core css -->
  <link rel="stylesheet" type="text/css" href="/resources/feane/css/bootstrap.css" />

  <!--owl slider stylesheet -->
  <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" />
  <!-- nice select  -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-nice-select/1.1.0/css/nice-select.min.css" integrity="sha512-CruCP+TD3yXzlvvijET8wV5WxxEh5H8P4cmz0RFbKK6FlZ2sYl3AEsKlLPHbniXKSrDdFewhbmBK5skbdsASbQ==" crossorigin="anonymous" />
  <!-- font awesome style -->
  <link href="/resources/feane/css/font-awesome.min.css" rel="stylesheet" />

  <!-- Custom styles for this template -->
  <link href="/resources/feane/css/style.css" rel="stylesheet" />
  <!-- responsive style -->
  <link href="/resources/feane/css/responsive.css" rel="stylesheet" />

</head>

<body>
  <div class="hero_area">
    <!-- header section strats -->
    <header class="header_section">
      <div class="container">
        <nav class="navbar navbar-expand-lg custom_nav-container ">
          <a class="navbar-brand" href="premain">
            <span>
              금댕이
            </span>
          </a>

          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class=""> </span>
          </button>

          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav  mx-auto ">
              <li class="nav-item ">
                <a class="nav-link" href="premain">Home </a>
              </li>
              <li class="nav-item active">
                <a class="nav-link" href="tmain">훈련<span class="sr-only">(current)</span></a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="hmain">미용</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="/member/login">로그인</a>
              </li>
            </ul>
            <div class="user_option">
              <a href="" class="user_link">
                <i class="fa fa-user" aria-hidden="true"></i>
              </a>
              <a class="cart_link" href="#">
                <svg version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 456.029 456.029" style="enable-background:new 0 0 456.029 456.029;" xml:space="preserve">
                  <g>
                    <g>
                      <path d="M345.6,338.862c-29.184,0-53.248,23.552-53.248,53.248c0,29.184,23.552,53.248,53.248,53.248
                   c29.184,0,53.248-23.552,53.248-53.248C398.336,362.926,374.784,338.862,345.6,338.862z" />
                    </g>
                  </g>
                  <g>
                    <g>
                      <path d="M439.296,84.91c-1.024,0-2.56-0.512-4.096-0.512H112.64l-5.12-34.304C104.448,27.566,84.992,10.67,61.952,10.67H20.48
                   C9.216,10.67,0,19.886,0,31.15c0,11.264,9.216,20.48,20.48,20.48h41.472c2.56,0,4.608,2.048,5.12,4.608l31.744,216.064
                   c4.096,27.136,27.648,47.616,55.296,47.616h212.992c26.624,0,49.664-18.944,55.296-45.056l33.28-166.4
                   C457.728,97.71,450.56,86.958,439.296,84.91z" />
                    </g>
                  </g>
                  <g>
                    <g>
                      <path d="M215.04,389.55c-1.024-28.16-24.576-50.688-52.736-50.688c-29.696,1.536-52.224,26.112-51.2,55.296
                   c1.024,28.16,24.064,50.688,52.224,50.688h1.024C193.536,443.31,216.576,418.734,215.04,389.55z" />
                    </g>
                  </g>
                  <g>
                  </g>
                  <g>
                  </g>
                  <g>
                  </g>
                  <g>
                  </g>
                  <g>
                  </g>
                  <g>
                  </g>
                  <g>
                  </g>
                  <g>
                  </g>
                  <g>
                  </g>
                  <g>
                  </g>
                  <g>
                  </g>
                  <g>
                  </g>
                  <g>
                  </g>
                  <g>
                  </g>
                  <g>
                  </g>
                </svg>
              </a>
              
              <form class="form-inline">
                <button class="btn  my-2 my-sm-0 nav_search-btn" type="submit">
                  <i class="fa fa-search" aria-hidden="true"></i>
                </button>
              </form>
              <a href="" class="order_online">
                로그인
              </a>
            </div>
          </div>
        </nav>
      </div>
    </header>
    <!-- end header section -->
    
    
	<h1>detail 페이지 입니다.</h1>
	
	 <div class="container">
	<table width="680" height="500">
		<tr>
			<td>사진</td>
			<td>이름</td>
			<td>${member.m_nick}</td>
		</tr>
		<tr>
			<td>
				<a>판매자 소개 </a>		
			</td>
			<td>
				<a>특이사항</a>		
			</td>
			<td>
				<a>리뷰</a>		
			</td>
		</tr>
		<tr>
			<td >자기소개</td>			
			<td >${trainer.t_self}</td>
		</tr>
		<tr>
			<td> 판매정보</td>	
			<td> ${trainer.t_sel}</td>	
		</tr>
		<tr>
			<td> 리뷰(${Ravg})</td>
			<td> ${review[i].r_score}</td>
		</tr>
		<tr>
			<td> 리뷰(${Ravg})</td>	
			<c:forEach var="i" begin="0" end="5" step="1" >
			<td> ${review[i].r_text}</td>
			</c:forEach>
		</tr>
		
		
	</table> 
	
	<table width="680" height="500">
		<tr>
			<td>완료</td>
		</tr>
		<tr>
			<td>기본금액</td>
			<td>${trainer.t_price}</td>
		</tr>
		<tr>
			<td>가능한 날짜</td>
			<td>달력api 올 곳</td>
		</tr>
		<tr>
			<td>보유 자격증</td>
			<td>${trainer.t_license}</td>
		</tr>
		<tr>
			<td>경력</td>
			<td>${trainer.t_career}</td>
		</tr>
		<tr>
			<td> <button id="dogCheck">협의하기</button>  </td>
		</tr>
		
	</table>
	</div>
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
      				  	<input type="hidden" name="t_m_no" value="${trainer.m_no}"/>
   					  	<input type="hidden" name="t_no" value="${trainer.t_no}" />
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
      				<p>3.어떤 훈련을 원하시나요</p>
	       				<input type="radio" name="e_service" value="기본교육" class="radio-val1" />기본교육(명령, 식사, 산책) <br/>
	       				<input type="radio" name="e_service" value="문제행동교육" class="radio-val1" />문제행동 교육(분리불안, 짖음, 공격) <br/>
	       				<input type="radio" name="e_service" value="배변교육" class="radio-val1" />배변교육 <br/>
	       				<input type="radio" name="e_service" value="사회성교육" class="radio-val1" />사회성교육 <br/>
	       				<input type="radio" name="e_service" value="원하는 훈련 :" class="radio-val" />기타 <br/>
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
       	<input type="hidden" name="t_m_no" value="${trainer.m_no}"/>
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
				addPet.attr("action","/main/mypage");
				addPet.submit();
			});
			
			// 주소 없을때 등록하러가는 버튼 활성화
			$("#addAddress").on("click",function(e){
				console.log("주소 등록하러간다잇.");
				addPet.attr("action","/main/mypage");
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
				addDogInfo.attr("action","/main/insertEst");
				
				addDogInfo.submit();
			});
		
			
			//버튼 클릭했을 때 기타 활성화
			 $('.radio-val').on('click',function () {
		           var check = $('.radio-val').val();

					if(check=='원하는 훈련 :'){
						 $('.radio-value-detail').attr('disabled', false);
					}
		        });
			
			//버튼 클릭했을 때 기타가 아니면 초기화
			 $('.radio-val1').on('click',function () {
		           var check = $('.radio-val1').val();
					 if(check!='원하는 훈련 :'){
						$('.radio-value-detail').val("");
						$('.radio-value-detail').attr('disabled', true);
					}
		        });
			
			
			
		});
		
		
		
		
		
		</script>
	






