<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html lang="en"><head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>GoldDog 매니저 마이페이지</title>
    <link href="https://fonts.googleapis.com/css2?family=Kumbh+Sans&amp;display=swap" rel="stylesheet"> <!-- https://fonts.google.com/specimen/Kumbh+Sans -->
    <link rel="stylesheet" href="/resources/Upright/fontawesome/css/all.min.css">  <!-- https://fontawesome.com/-->  
    <link rel="stylesheet" href="/resources/Upright/css/magnific-popup.css">       <!-- https://dimsemenov.com/plugins/magnific-popup/ -->
    <link rel="stylesheet" href="/resources/Upright/slick/slick.min.css">          <!-- https://kenwheeler.github.io/slick/ -->
    <link rel="stylesheet" href="/resources/Upright/slick/slick-theme.css">
    <link rel="stylesheet" href="/resources/Upright/css/templatemo-upright.css">
    <link rel="stylesheet" href="/resources/team.css">
    <script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
    <script type="text/javascript" src="/resources/ckeditor/ckeditor.js"></script>
</head>
<body>

	<!--  헤더  -->
	<div>
	<jsp:include page="../header.jsp" />
	</div>
	<!--  헤더 END -->
	
<div class="bodymain"><!-- 바디메인 -->
	<div class="parallax-mirror" style="visibility: hidden; z-index: -100; position: fixed; top: 0px; left: 0px; overflow: hidden;"><img class="parallax-slider" src=""></div><div class="parallax-mirror" style="visibility: hidden; z-index: -100; position: fixed; top: 0px; left: 0px; overflow: hidden;"><img class="parallax-slider" src=""></div><div class="parallax-mirror" style="visibility: hidden; z-index: -100; position: fixed; top: 0px; left: 0px; overflow: hidden;"><img class="parallax-slider" src=""></div><div class="parallax-mirror" style="visibility: hidden; z-index: -100; position: fixed; top: 0px; left: 0px; overflow: hidden;"><img class="parallax-slider" src=""></div>    
	    <div class="container-fluid" >
	        <div class="row">
	            <!-- Leftside bar -->
	            <div id="tm-sidebar" class="tm-sidebar" >  <!-- 접기 -->
	                <nav class="tm-nav">
	                    <button class="navbar-toggler" type="button" aria-label="Toggle navigation">
	                        <i class="fas fa-bars"></i>
	                    </button>
	                    <div><%-- 
	                        <div class="tm-brand-box">
	                            <h1 class="tm-brand">Upright</h1>
	                        </div> --%>                
	                        <ul id="tm-main-nav">
	                            <li class="nav-item">                                
	                                <a href="#estimate_navbar" class="nav-link">
	                                    <div class="triangle-right"></div>
	                                    <i class="fas fa-images nav-icon"></i>
	                                    견적서
	                                </a>
	                            </li>
	                            <li class="nav-item">
	                                <a href="/main/selUpload?m_no=${ managerlist[0].m_no }" class="nav-link">
	                                    <div class="triangle-right"></div>
	                                    <i class="fas fa-user-friends nav-icon"></i>
	                                    매니저 등록& 수정 
	                                </a>
	                            </li>
	                            <li class="nav-item">
	                                <a href="#area_navbar" class="nav-link">
	                                    <div class="triangle-right"></div>
	                                    <i class="fas fa-home nav-icon"></i>
	                                    활동지역
	                                </a>
	                            </li>
	                            <li class="nav-item" id="stackmoney">
	                            	<div class="input-block">
									  <input type="text" name="input-text" id="input-text" 
									  required spellcheck="false" value="${ managerlist[3].t_salary != null ? managerlist[3].t_salary : '0' } 원" >
									  <span class="placeholder">
									    정산 예정 금액
									  </span>
									</div>
	                            </li>
	                        </ul>
	                    </div>
	                </nav>
	            </div>
            
			<div class="tm-main">
                <!-- Home section -->
                <div class="tm-section-wrap">
                    <section id="mypage" class="tm-section">
                    	<h3 class="tm-text-primary">프로필</h3> 
                        <hr class="mb-5">
                        <div class="row">
                        	<fieldset id="mapage_container">
                        		<div class="item"> <img class="mapageIMG" src="/resources/serverImg/${memberlist[0].m_img}"></div>
                        		<div class="grid">
									<div class="item">이름 : ${ managerlist[0].m_name }</div>
									<div class="item">휴대전화 : ${ managerlist[0].m_phone }</div>
									<div class="item">닉네임 : ${ managerlist[0].m_nick }</div>
									<div class="item">이메일 : ${ managerlist[0].m_email }</div>
									<sec:authorize access="hasRole('ROLE_TRAINER')">
										<div class="item">이용서비스 : 훈련매니저</div>
									</sec:authorize>
								</div>
                        	</fieldset>
                        </div>
                    </section>


					<%-- 견적서 --%>
					<h3 class="tm-text-primary" id="estimate_navbar">견적서</h3>
					<hr class="mb-5">
					<div class="Estimate" id="Estimate">
							<c:forEach items="${ estimatelist }" var="estimate" varStatus="status">
							<a class="btn btn-primary" data-bs-toggle="collapse" data-bs-target="#multiCollapseExample${ status.index }"
								href="#multiCollapseExample1" role="button"
								aria-expanded="false" aria-controls="multiCollapseExample1">${ estimateMember[status.index].m_nick } 님의 견적서
							</a>
							<div class="row">
								<div class="col">
									<div class="collapse multi-collapse" id="multiCollapseExample${ status.index }">
										<div class="card card-body" style="height: 140">
											<table>
												<tr>
													<th><button class="btn btn-outline-primary"
															type="button" style="width: 120px;" onclick="window.location.href='managerEstimate?e_no=${estimate.e_no}'">견적서 확인</button></th>
													<th>${ estimateMember[status.index].m_nick }님 </th>
												</tr>
												<tr>
													<th colspan="2"><br></th>
												</tr>
												<tr>
													<th align="center">
														<c:choose>
															<c:when test="${ estimate.e_con eq '0'}">협의 대기중</c:when>
															<c:when test="${ estimate.e_con eq '1'}">협의 완료</c:when>
															<c:when test="${ estimate.e_con eq '2'}">방문 예정</c:when>
															<c:when test="${ estimate.e_con eq '3'}">의뢰 완료</c:when>
															<c:when test="${ estimate.e_con eq '4'}">의뢰 종료</c:when>
															<c:otherwise>취소됨</c:otherwise>
														</c:choose>
													</th>
													<th align="center">010-1234-1234</th>
												</tr>
											</table>
										</div>
									</div>
								</div>
							</div>
							</c:forEach>
						<c:if test="${ empty estimatelist }">
							<div>
								견적서가 없습니다
							</div>
						</c:if>
					</div>


					<%-- 훈련사 정보 --%>

                   	<div class="manager_info">
                   	<h3 class="tm-text-primary">내가 등록한 훈련사 소개</h3> 
                    <hr class="mb-5">
                    	<c:if test="${empty managerlist[3].t_sel }">
                    		<div>
          						등록된 소개가 없습니다.
           					</div>
                    	</c:if>
                    	<c:if test="${not empty managerlist[3].t_sel }">
                    		<div>
          						${ managerlist[3].t_sel }
           					</div>
                    	</c:if>
                   	</div>
                    
                    <!-- 활동지역 -->
                    <h3 class="tm-text-primary" id="area_navbar">활동지역</h3> 
                    <hr class="mb-5">
	                    <div class="business_trip_section">
	                    	<div>
	                    		<fieldset>
	                    			<div class="business_container">
	                    				<div class="business_items">
				                    		활동지역
	                    				</div>
	                    				<div class="business_items">
	                    					<fieldset style="padding: 5px; min-height: 50px" >
	                    						<div class="business_items_container">
                  									<c:if test="${ !empty managerlist[1] }">
		                   								<c:forEach items="${ managerlist[1] }" var="addr">
                   											<div class='business_item'>
                   												<button type="text" name="${ addr.area }" data-ico='X' value='${ addr.field }' disabled="disabled">
                   													<c:out value="${addr.areaKO}"/> <c:out value="${addr.field}"/> 
                   												</button>
                   											</div>
		                   								</c:forEach>
                   									</c:if>
	                    						</div>
	                    					</fieldset>
	                    				</div>
	                    				<div class="edit"><input form="addressSave" type="submit" value="저장"></div>
	                    			</div>
	                    		</fieldset>
                  				<a href="javascript:void(0)" class="addressEdit" ><div class="edit">지역변경</div></a>
                    			<div class="edit">
                    				<div>
                    					<a href="javascript:void(0)" onclick="onAddress(this)" class="seoul" class="area">서울</a>
                    					<a href="javascript:void(0)" onclick="onAddress(this)" class="gyeonggi" class="area">경기</a>
                    				</div>
				        			<form action="area.go" method="post" id="addressSave">
				        				<input type="hidden" value="${ managerlist[0].m_no }" name="m_no">
                   						<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
	                   					<ul class="area_container" id="seoul">
	                   						<c:forEach items="${ managerlist[2][0] }" var="area" varStatus="vs">
	                   							<li> <input type="checkbox" name="seoul" value="${ area }">${ area }</li>
	                   						</c:forEach>
	                   					</ul>
	                   					
	                   					<ul class="area_container" id="gyeonggi">
	                   						<c:forEach items="${ managerlist[2][1] }" var="area" varStatus="vs">
	                   							<li> <input type="checkbox" name="gyeonggi" value="${ area }">${ area }</li>
	                   						</c:forEach>
	                   					</ul>
									</form>
                    			</div>
	                    	</div>	
	                    </div>
				</div>
			</div> <!-- .tm-main -->                      
		</div> <!-- .row -->
	</div> <!-- .container-fluid -->
</div><!-- 바디메인 END -->
<script type="text/javascript" src="/resources/mypage.js"> 
//글쓰기 editor 및 사진 업로드 기능
</script>

</body>
</html>