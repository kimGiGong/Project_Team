<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en"><head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>GoldDog 마이페이지</title>
    <link href="https://fonts.googleapis.com/css2?family=Kumbh+Sans&amp;display=swap" rel="stylesheet"> <!-- https://fonts.google.com/specimen/Kumbh+Sans -->
    <link rel="stylesheet" href="/resources/Upright/fontawesome/css/all.min.css">  <!-- https://fontawesome.com/-->  
    <link rel="stylesheet" href="/resources/Upright/css/magnific-popup.css">       <!-- https://dimsemenov.com/plugins/magnific-popup/ -->
    <link rel="stylesheet" href="/resources/Upright/slick/slick.min.css">          <!-- https://kenwheeler.github.io/slick/ -->
    <link rel="stylesheet" href="/resources/Upright/slick/slick-theme.css">
    <link rel="stylesheet" href="/resources/Upright/css/templatemo-upright.css">
    <!--<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>  -->
    <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="/resources/team.css">
    
</head>
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
	                                <a href="#Estimate" class="nav-link current">
	                                    <div class="triangle-right"></div>
	                                    <i class="fas fa-home nav-icon"></i>
	                                    견적서
	                                </a>
	                            </li>
	                            <li class="nav-item">
	                                <a href="#gallery" class="nav-link">
	                                    <div class="triangle-right"></div>
	                                    <i class="fas fa-images nav-icon"></i>
	                                    애견등록 및 수정
	                                </a>
	                            </li>
	                           <li class="nav-item">
	                                <a href="/admin/QnA" class="nav-link">
	                                    <div class="triangle-right"></div>
	                                    <i class="fas fa-heart nav-icon"></i>
	                                    공지사항 & QnA
	                                </a>
	                            </li>
	                        </ul>
	                    </div>
	                </nav>
	            </div>
            
			<div class="tm-main">
                <!-- Home section -->
                <div class="tm-section-wrap">
                    <section id="mypage" class="tm-section">
                        <h3 class="tm-text-primary">${member.m_name}</h3>
                        <hr class="mb-5">
                        <div class="row">
                        	<fieldset id="mapage_container">
                        		<div class="item"> <img class="mapageIMG" src=""></div>
                        		<div class="grid">
									<div class="item">이름 : ${ manager.m_name }</div>
									<div class="item">휴대전화 : ${ manager.m_phone }</div>
									<div class="item">닉네임 : ${ manager.m_nick }</div>
									<div class="item">이메일 : ${ manager.m_email }</div>
									<div class="item">이용서비스 : ${ manager.authList[0].auth }</div>
									<div class="item">회원정보 수정 : ${ manager.authList[0].auth }</div>
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
															type="button" style="width: 120px;">견적서 확인</button></th>
													<th>${ estimateMember[status.index].m_nick }님 </th>
												</tr>
												<tr>
													<th colspan="2"><br></th>
												</tr>
												<tr>
													<th align="center">
														<c:choose>
															<c:when test="${ estimate.e_con eq '0'}">견적 신청</c:when>
															<c:when test="${ estimate.e_con eq '1'}">결제 대기</c:when>
															<c:when test="${ estimate.e_con eq '2'}">방문 예정</c:when>
															<c:when test="${ estimate.e_con eq '3'}">방문 확인대기</c:when>
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


						<div>
                    	<div class="gallery" >
		                    <div id="gallery"> 
		                    <br><br><br>
		                    	<h2 class="tm-text-primary">애견 등록 및 수정</h2>
		                    	<hr class="mb-5">
		                    	<div class="card card-body d-grid gap-2 d-md-flex justify-content-md-end">
									<table>
										<tr>
											<th>
												<button class="btn btn-outline-primary" type="button" style="text-align: left" 
												data-bs-toggle="collapse" data-bs-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
													${manager.m_nick}님의 애견 관리
												</button>
											</th>
											<c:if test="${dogCheck == 0 }">
												<th style="width:70px">
													<button type="button" class="btn btn-primary me-md-2" style="" data-bs-toggle="modal" data-bs-target="#exampleModal">
														등록
													</button>
												</th>
											</c:if>
											<c:if test="${dogCheck != 0 }">
												<th style="width:70px">
													<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
														추가
													</button>
												</th>
											</c:if>
										</tr>
									</table>
								</div>
								<c:if test="${dogCheck == 0 }">
									<div class="collapse" id="collapseExample">
										<div class="card card-body">
											<table>
												<tr>
													<th>등록된 반려견이 없습니다.</th>
												</tr>
											</table>
										</div>
									</div>
								</c:if>
								<c:if test="${dogCheck != 0}">
									<c:forEach var="i" begin="0" end="${dogCheck-1}" step="1">
										<div class="collapse" id="collapseExample">
											<div class="card card-body">
												<table>
													<tr>
														<th>${dog[i].d_name}</th>
														<th style="width:70px">
															<button type="button"  value="${dog[i].d_no}" class="btn btn-primary" veiwDog="${dog[i].d_name}" data-bs-toggle="modal" data-bs-target="#exampleModal2">
																보기
															</button>
														</th>
														<th style="width:70px">	
															<button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#exampleModal3">
																삭제
															</button>
														</th>
													</tr>
													
												</table>
											</div>
										</div>
									</c:forEach>
								</c:if>
		                    </div>
                    	</div>
                    </div>
                    <br><br><br><br><br><br><br><br><br><br><br><br><br>
                	
					
				</div>
			</div> <!-- .tm-main -->                      
		</div> <!-- .row -->
	</div> <!-- .container-fluid -->
</div><!-- 바디메인 END -->
	<script type="text/javascript" src="../../../resources/mypage.js"></script>
	
	<!-- Modal 1-->
	<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
			<div class="modal-content">
				<div class="modal-header">
					<h3 class="modal-title fs-5" id="exampleModalLabel">애견 등록</h3>
					<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<form id="dogInsertPro" action="/member/dogInsertPro?${_csrf.parameterName}=${_csrf.token}" method="post" enctype="multipart/form-data" name="dogInsert">
						<table>
							<tr>
								<th>이　　름 : </th>
								<th><input type="text" class="form-control form-control-user" name="d_name" placeholder="예) 가을이"></th>
							</tr>
							<tr>
								<th>나　　이 : </th>
								<th><input type="text" class="form-control form-control-user" name="d_age" placeholder="예) 4 (살, 숫자만 입력)"></th>
							</tr>
							<tr>
								<th>성　　별 : </th>
								<th>
									남 <input type="radio" name="d_gender" value="남" checked/> 
									여 <input type="radio" name="d_gender" value="여"/> 
								</th>
							</tr>
							<tr>
								<th>종　　류 : </th>
								<th><input type="text" class="form-control form-control-user" name="d_type" placeholder="예) 푸들"></th>
							</tr>
							<tr>
								<th>무　　게 : </th>
								<th><input type="text" class="form-control form-control-user" name="d_weight" placeholder="예) 5 (kg, 숫자만 입력)"></th>
							</tr>
							<tr>
						    	<th class="text-center" colspan="2"><input class="form-control" type="file" id="formFile" name="part_img"/></th>
						    </tr>
						</table>
					</form>
				</div>
				
				<div class="modal-footer">
					<button type="submit" class="btn btn-primary" form="dogInsertPro" >등록</button>
					<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
				</div>
			</div>
		</div>
	</div>
	
	<!-- Modal 2-->
	<div class="modal fade" id="exampleModal2" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg modal-dialog-centered modal-dialog-scrollable">
			<div class="modal-content">
				<div class="modal-header">
					<h3 class="modal-title fs-5" id="exampleModalLabel">애견 수정</h3>
					<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				</div>
				<div class="row">
					<div class="col-lg-5 d-none d-lg-block">
	                    <div class="p-5">
	                    	<img class="card-img-top" src="/resources/serverImg/dog.jpg" width="222" height="180" alt="Card image cap">
	                    	<input class="form-control" width="420" type="file" id="formFile" name="img"/>
	                    </div>
	                </div>
					<div class="col-lg-7">
						<form id="dogModfiyPro" action="/member/dogModfiyPro?${_csrf.parameterName}=${_csrf.token}" method="post" enctype="multipart/form-data" name="dogModfiy" onsubmit="return checkField()">
							<table>
								<br/><br/>
								<tr>
									<th>이　　름　:　</th>
									<th><input type="text" class="form-control form-control-user" name="d_name" value="가을이"></th>
								</tr>
								<tr>
									<th>나　　이　:　</th>
									<th><input type="text" class="form-control form-control-user" name="d_age" value="4살"></th>
								</tr>
								<tr>
									<th>성　　별　:　</th>
									<th><input class="form-control form-control-user" value="남"  readonly="" /></th>
								</tr>
								<tr>
									<th>종　　류　:　</th>
									<th><input type="text" class="form-control form-control-user" name="d_type" value="푸들"></th>
								</tr>
								<tr>
									<th>무　　게　:　</th>
									<th><input type="text" class="form-control form-control-user" name="d_weight" value="5kg"></th>
								</tr>
							</table>
						</form>
					</div>
				
					<div class="modal-footer col-lg-12" >
						<button type="submit" class="btn btn-primary" form="dogModfiyPro" >수정</button>
						<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	
 </body>
 </html>