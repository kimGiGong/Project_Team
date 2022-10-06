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
      				<c:forEach var="i" begin="0" end="${petSize-1}" step="1">
	       				<input type="radio" name="myDog" value="d_no"/>${petName[i]} 
      				</c:forEach>
      			</div>
      			<div class="modal-footer">
        			<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
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
		<!-- value 추가해야함 -->  
       	<input type="hidden" name="m_no" />
       </form>
	
	


 <%@ include file="../footer.jsp" %>
	<script type="text/javascript">
		$(document).ready(function(){
			
			let result ="${result}";
			
			function modalCheck(result){
				if(result =='0'){
					$("#noPet").modal("show");
				}else if(result =='1'){
					$("#yesPet").modal("show");	
				}else if(result =='2'){
					$("#noId").modal("show");	
				}	
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
				addPet.attr("action","/main/tmain");
				addPet.submit();
			});
			
			$("#goLogin").on("click",function(e){
				console.log("아이디가 없군.");
				addPet.attr("action","/member/login");
				addPet.submit();
			});
			
			
		});
		</script>
	






