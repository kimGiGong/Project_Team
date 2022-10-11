<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="en"><head>
    <meta charset="UTF-8">
</head>
<body>
		<div>
		<jsp:include page="../header.jsp"/>
		</div>
	<!--  헤더 END -->

  <div class="hero_area">
    <div class="bg-box">
      <img src="/resources/feane/images/roto.jpg" alt="">
    </div>
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
      					<img src="/resources/serverImg/${ad1}" width="350" height="300"/>
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
                       <div class="bg-box">
      					<img src="/resources/serverImg/${ad2}" width="350" height="300"/>
    				</div>
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
                       <div class="bg-box">
      					<img src="/resources/serverImg/${ad3}" width="350" height="300"/>
    				</div>
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
      <div class="filters-content">
      		<!-- 사용자 검색 --> 
           <div class="row justify-content-between">
	          	<div class="col-6 all pizza">
					<form class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search" action="/board/list" method="get">
				 		<input type="hidden" name="pageNum" value="${pager.cri.pageNum}" />
		   				<input type="hidden" name="listQty" value="${pager.cri.listQty}" />
                        <div class="input-group">
                            <input type="text" class="form-control bg-light border-0 small" placeholder="훈련사 검색">
                            <div class="input-group-append">
                                    <button class="btn btn-primary" type="button"><i class="fa fa-search" aria-hidden="true"></i></button>
                            </div>
                        </div>
                    </form>
		   		</div>
		   		
		   		
		   		
		   		<div class="col-2 all pizza">
		   			<form id="selectForm" action="/board/list" method="get">
		   			<select name="sel" >
		   				<option value=""> 정   렬 </option>
		   				<option value="W"> 리뷰 평점순</option>
		   				<option value="C"> 리뷰 많은순</option>
		   				<option value="T"> 낮은 가격순</option>
		   				<option value="T"> 높은 가격순</option>
		   			</select>
		   			</form>
		   		</div>	
          </div>
          
          
		<!-- 사용자 리스트 출력 -->  
		 <div class="row grid">
        	 <c:if test="${trainercheck!=0}">
	         <c:forEach var="i" begin="0" end="${trainercheck-1}" step="1">
	          <div class="col-sm-12 col-lg-12 all pizza">
	                <span class="border-top"></span>
	            <div class="box" style="border: solid 2px #008294;">
	                <div class="img-box" style="padding: 25px;">
	                  <a class="move" href="${trainer[i].m_no}" id="${trainer[i].t_no}"  ><img src="/resources/feane/images/Michaela.png" width="185px" height="185px" style="border-radius:1.5rem;"/></a> 
	                </div>
	                <div class="detail-box" >
		                  <h5>닉네임 : ${member[i].m_nick}</h5>
		                  <p>소개 : ${trainer[i].t_self}</p>
		                  <p>리뷰평점 : ${rAvg[i]}점 (${rTotal[i]})</p>
		                  <p>훈련 가격 : ${trainer[i].t_price} 원</p>
		                  <p>보유 자격증 : ${trainer[i].t_license}</p>
		                  <p>m_no : ${trainer[i].m_no} t_no : ${trainer[i].t_no}</p>
	                </div>
	                </div>
	            </div>
	         </c:forEach>
			</c:if>
           	<c:if test="${trainercheck==0}">
	         <c:forEach var="i" begin="0" end="0" step="1">
	          <div class="col-sm-12 col-lg-12 all pizza">
	                <span class="border-top"></span>
	            <div class="box" style="border: solid 2px #008294;">
	                <div class="img-box" style="padding: 25px;">
	                  <img src="/resources/feane/images/Michaela.png" width="185px" height="185px" style="border-radius:1.5rem;"/> 
	                </div>
	                <div class="detail-box" >
	                	  <br/><br/>
		                  <h5>아직 등록된 맴버가 없습니다.</h5>
	                </div>
	                </div>
	            </div>
	         </c:forEach>
         	</c:if>
          	</div><!-- row end -->
          </div> <!-- filters-content end -->
          
          
        <br/><br/>
		<div >
		<ul class="pagination justify-content-md-center">
			<c:if test="${pager.prev}">
				<li class="page-item">
					<a class="page-link" href="${pager.startPage-1}" tabindex="-1">Previous</a>
				</li>
			</c:if>
			<c:forEach var="num" begin="${pager.startPage}" end="${pager.endPage}" >
				<li class="page-item ${pager.cri.pageNum == num ? "active":""}">
					<a class="page-link" href="/main/tmain?pageNum=${num}">${num}</a>
				</li>
			</c:forEach>
			<c:if test="${pager.next}">
				<li class="page-item">
					<a class="page-link" href="${pager.endPage+1}">Next</a>
				</li>
			</c:if>
		</ul>
	</div>
     <form  id="pagingForm" action="/main/detaisdasdaslFm" >
		<input type="hidden" name="pageNum" value="${pager.cri.pageNum}" />
		<input type="hidden" name="listQty" value="${pager.cri.listQty}" />
		<input type="hidden" name="sel" value="${pager.cri.sel}" />
		<input type="hidden" name="keyword" value="${pager.cri.keyword}" />
	</form>
	</div>
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
			pagingForm.attr("action", "/main/tDetailForm"); 
			// read로 이동하기(form으로 요청) 
			pagingForm.submit(); 
		});
		
		
		
		
		
		
		
		});
	
		
		
		
		
		
		
	</script>
