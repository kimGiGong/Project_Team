<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
    <div class="bg-box">
      <img src="/resources/feane/images/roto.jpg" alt="">
    </div>
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
    <!-- slider section -->
    <section class="slider_section ">
      <div id="customCarousel1" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner">
          <div class="carousel-item active">
            <div class="container ">
              <div class="row">
                <div class="col-md-7 col-lg-6 ">
                  <div class="detail-box">
                  
                    <h1>
                      쉽다쉬워
                    </h1>
                    <p>
                      우리 금댕이를 위해서라면 모든지 할 수 있어!
                    </p>
                    <div class="btn-box">
                      <a href="" class="btn1">
                        구매하기
                      </a>
                    <div class="bg-box">
      					<img src="/resources/feane/images/f1.png" alt="">
    				</div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="carousel-item ">
            <div class="container ">
              <div class="row">
                <div class="col-md-7 col-lg-6 ">
                  <div class="detail-box">
                    <h1>
                      두번쨰 광고
                    </h1>
                    <p>
                      두번쨰 광고 입니도
                    </p>
                    <div class="btn-box">
                      <a href="" class="btn1">
                        구매하기
                      </a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <div class="container ">
              <div class="row">
                <div class="col-md-7 col-lg-6 ">
                  <div class="detail-box">
                    <h1>
                      세번째 광고
                    </h1>
                    <p>
                      세번째 광고입니다.
                    </p>
                    <div class="btn-box">
                      <a href="" class="btn1">
                        구매하기
                      </a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="container">
          <ol class="carousel-indicators">
            <li data-target="#customCarousel1" data-slide-to="0" class="active"></li>
            <li data-target="#customCarousel1" data-slide-to="1"></li>
            <li data-target="#customCarousel1" data-slide-to="2"></li>
          </ol>
        </div>
      </div>

    </section>
    <!-- end slider section -->
  </div>

  
  <!-- food section -->

  <section class="food_section layout_padding-bottom">
    <div class="container">
      <!-- 사용자 리스트 출력 -->  
      <div class="filters-content">
        <div class="row grid">
		<form id="searchForm" action="/board/list" method="get">
          <div class="col-lg-2  all pizza">
			<input type="text" name="keyword" class="form-control" placeholder="훈련사 찾기"/>
   			<input type="hidden" name="pageNum" value="${pager.cri.pageNum}" />
   			<input type="hidden" name="listQty" value="${pager.cri.listQty}" />
          </div>
          <div class="col-lg-2  all pizza">
   			<button class="btn btn-light">검색</button>
          </div>
          <div class="col-lg-2 offset-lg-6 all pizza">
          			<select name="sel">
          				<option value=""> 정   렬 </option>
          				<option value="W"> 리뷰 평점순</option>
          				<option value="C"> 리뷰 많은순</option>
          				<option value="T"> 낮은 가격순</option>
          				<option value="T"> 높은 가격순</option>
          			</select>
          </div>
		</form>
        	
	         <c:forEach var="i" begin="0" end="4" step="1">
	          <div class="col-sm-12 col-lg-12 all pizza">
	            <div class="box">
	              <div>
	                <div class="img-box">
	                  <a class="move" href="${trainer[t_no[i]-1].m_no}" id="${trainer[t_no[i]-1].t_no}"  ><img src="/resources/feane/images/Michaela.png" width="300" height="190px"></a> 
	                </div>
	                <div class="detail-box" >
		                  <h5>닉네임 : ${member[i].m_nick}</h5>
		                  <p>소개 : ${trainer[i].t_self}</p>
		                  <p>리뷰평점 : ${rAvg[i]}점 (${rTotal[i]})</p>
		                  <p>훈련 가격 : ${trainer[i].t_price} 원</p>
		                  <p>보유 자격증 : ${trainer[i].t_license}</p>
		                  <p>m_no : ${trainer[t_no[i]-1].m_no}</p>
		                  <p>t_no : ${trainer[t_no[i]-1].t_no}</p>
	                </div>
	                </div>
	              </div>
	            </div>
	          
		     
	         </c:forEach>
          </div>
         </div>
       
   <div class="col-sm-12 col-md-12">
		<ul class="pagination">
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
   
     <form  id="pagingForm" action="/main/detailForm" >
		<input type="hidden" name="pageNum" value="${pager.cri.pageNum}" />
		<input type="hidden" name="listQty" value="${pager.cri.listQty}" />
		<input type="hidden" name="sel" value="${pager.cri.sel}" />
		<input type="hidden" name="keyword" value="${pager.cri.keyword}" />
	</form>
  </section>

  <!-- end food section -->

  <!-- 베스트리뷰 5개만 불러오기 c:로 줄이기 -->


  <section class="client_section layout_padding-bottom">
    <div class="container">
      <div class="heading_container heading_center psudo_white_primary mb_45">
        <h2>
         베스트 리뷰들
        </h2>
      </div>
      <div class="carousel-wrap row ">
        <div class="owl-carousel client_owl-carousel">
        
	      <c:forEach var="i" begin="0" end="5" step="1">
          <div class="item">
            <div class="box">
              <div class="detail-box">
                <p>
                  ${review[i].r_text}
                </p>
                <h6>
                	리뷰 등록한사람 이름
                </h6>
                <p>
                  ${review[i].r_date}
                </p>
              </div>
              <div class="img-box">
                <img src="/resources/feane/images/client1.jpg" alt="" class="box-img">
              </div>
            </div>
          </div>
          </c:forEach>
          
        </div>
      </div>
    </div>
  </section>
  
  
  <!-- footer 복붙 -->  
  <%@ include file="../footer.jsp" %>
  <!-- end client section -->
	<script type="text/javascript">
		$(document).ready(function(){
			
		let pagingForm = $("#pagingForm"); // 숨긴 폼태그 가져오기 	
		// 제목클릭시 detailForm로 넘어가는 처리
		$(".move").on("click", function(e){
			e.preventDefault(); 
			console.log("detail!!!");
			// pagingForm에 히든input으로 m_no값 추가하기 (태그 동적 생성) 
			let m_no = $(this).attr("href");
			let t_no = $(this).attr("id");
			pagingForm.append("<input type='hidden' name='m_no' value='" + m_no + "' />"); 
			pagingForm.append("<input type='hidden' name='t_no' value='" + t_no + "' />"); 
			// pagingForm의 action 속성값을 /board/read로 변경
			pagingForm.attr("action", "/main/detailForm"); 
			// read로 이동하기(form으로 요청) 
			pagingForm.submit(); 
		});
		
		
		
		
		
		
		
		});
	
		
		
		
		
		
		
	</script>
