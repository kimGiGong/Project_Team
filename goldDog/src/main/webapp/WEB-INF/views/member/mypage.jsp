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
    <link rel="stylesheet" href="/resources/team.css">
    <!--<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>  -->
   	<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>
    <style type="text/css">
		.star-rating { display: flex; flex-direction: row-reverse; font-size: 2.25rem; line-height: 2.5rem; justify-content: space-around; padding: 0 0.2em; text-align: center; width: 5em;}
		.star-rating input {display: none;}
		.star-rating label {-webkit-text-fill-color: transparent;/* Will override color (regardless of order) */-webkit-text-stroke-width: 2.3px;-webkit-text-stroke-color: #2b2a29;cursor: pointer;}
		.star-rating :checked ~ label {-webkit-text-fill-color: gold;}
		.star-rating label:hover, .star-rating label:hover ~ label {-webkit-text-fill-color: #fff58c;}
	</style>
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
                        <h3 class="tm-text-primary">회원 정보</h3>
                        <hr class="mb-5">
                        <div class="row">
                        	<fieldset id="mapage_container">
                        		<div class="item"> <img class="card-img-top" src="/resources/serverImg/${manager.m_img }" style="width: 200px; height: 150px"></div>
                        		<div class="grid">
									<div class="item">이　　름　:　${ manager.m_name }</div>
									<div class="item">닉네임　:　${ manager.m_nick }</div>
									<div class="item">휴대전화　:　${ manager.m_phone }</div>
									<div class="item">이메일　:　${ manager.m_email }</div>
									<div class="item"></div>
									<div class="item">
										<button class="btn btn-primary btn-user" type="button" onclick="window.location.href='modify'"> 회원정보 수정</button>
									</div>
								</div>
                        	</fieldset>
                        </div>
                    </section>
                    
                 	<br><br><br><br><br><br><br><br><br><br><br><br><br>
                    <%-- 견적서 --%>
					<div class="Estimate" id="Estimate">
					<br><br><br>
						<h3 class="tm-text-primary">견적서</h3>
						<hr class="mb-5">
							<c:forEach items="${ estimatelist }" var="estimate" varStatus="status">
							<a class="btn btn-primary" data-bs-toggle="collapse" data-bs-target="#multiCollapseExample${ status.index }"
								href="#multiCollapseExample1" role="button"
								aria-expanded="false" aria-controls="multiCollapseExample1">${ estimateMember[status.index].m_nick } 매니저 견적서
							</a>
							<div class="row">
								<div class="col">
									<div class="collapse multi-collapse" id="multiCollapseExample${ status.index }">
										<div class="card card-body" style="height: 140">
											<table>
												<tr>
													<th><button class="btn btn-outline-primary" type="button" style="width: 120px;" onclick="window.location.href='/memberEstimate?e_no=${estimate.e_no}'">견적서 확인</button></th>
													<th>${estimateMember[status.index].m_nick} 매니저 </th>
												</tr>
												<tr>
													<th colspan="2"><br></th>
												</tr>
												<tr>
													<th align="center">
														<c:choose>
															<c:when test="${ estimate.e_con eq '0'}">　견적 신청</c:when>
															<c:when test="${ estimate.e_con eq '1'}">　고객결제 대기</c:when>
															<c:when test="${ estimate.e_con eq '2'}">　방문 예정</c:when>
															<c:when test="${ estimate.e_con eq '3'}">　방문 확인대기</c:when>
															<c:when test="${ estimate.e_con eq '4'}">　의뢰 종료</c:when>
															<c:otherwise>취소됨</c:otherwise>
														</c:choose>
													</th>
													<th align="center">
														<c:choose>
															<c:when test="${ estimate.e_con eq '0'}">${ estimateMember[status.index].m_phone }</c:when>
															<c:when test="${ estimate.e_con eq '1'}">${ estimateMember[status.index].m_phone }</c:when>
															
															<c:when test="${ estimate.e_con eq '2'}">${ estimateMember[status.index].m_phone }</c:when>
															<c:when test="${ estimate.e_con eq '3'}">${ estimateMember[status.index].m_phone }</c:when>
															<c:when test="${ estimate.e_con eq '4'}">
																<!-- Modal -->
																<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#reviewModal" >
																	리뷰 작성
																</button>
															</c:when>
															<c:otherwise>취소됨</c:otherwise>
														</c:choose>
													</th>
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
												<input type="hidden" name="d_no" value="${dog[i].d_no}"  />
												<table>
													<tr>
														<th>${dog[i].d_name}</th>
														<th style="width:70px">
															<button type="button" value="${dog[i].d_no}" class="btn btn-primary" veiwDog="${dog[i].d_name}" data-bs-toggle="modal" data-bs-target="#exampleModal2">
																보기
															</button>
														</th>
														<th style="width:70px">	
															<button type="button" value="${dog[i].d_no}" deleteDog="${dog[i].d_no}" class="btn btn-danger ">
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
								<th><input type="number" class="form-control form-control-user" name="d_age" placeholder="예) 4 (살, 숫자만 입력)"></th>
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
								<th><input type="number" class="form-control form-control-user" name="d_weight" placeholder="예) 5 (kg, 숫자만 입력)"></th>
							</tr>
							<tr>
						    	<th class="text-center" colspan="2"><input class="form-control" type="file" id="formFile" name="part_img"/></th>
						    </tr>
						</table>
					</form>
				</div>
				
				<div class="modal-footer">
					<button type="button" class="btn btn-primary" id="dogInsert" >등록</button>
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
				<div class="row" id="dogModal">
				
				</div>
			</div>
		</div>
	</div>
	
	<!--삭제 눌렀을때 띄울 모달 -->
		<div class="modal fade" id="addNew" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
	    		<div class="modal-content">
		      		<div class="modal-header">
		        		<h5 class="modal-title" id="myModalLabel">애견 삭제</h5>
		        		<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
		      		</div>
	      			<div class="modal-body">
        				등록된 애견을 삭제하시겠습니까?
	      			</div>
	      			<div class="modal-footer">
	        			<button type="button" class="btn btn-danger" id="deleteDogPro" >삭제</button>
	        			<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
	      			</div>
	   			</div>
	  		</div>
		</div> <!-- end 모달 -->
		
		 <form id="pagingForm" action="" method="post">
			 	  <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
		 
		 </form>
		 
		 <!-- review Modal -->
		<div class="modal fade" id="reviewModal" tabindex="-1" aria-labelledby="reviewModalLabel" aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
				<div class="modal-content">
					<div class="modal-header">
						<h3 class="modal-title fs-5" id="reviewModalLabel">리뷰 작성</h3>
						<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
					</div>
					<div class="modal-body">
						<div>
							<h5 align="center">서비스에 만족하시나요 ?</h5>
						</div>
						<form id="reviewPro" action="/member/reviewPro?${_csrf.parameterName}=${_csrf.token}" method="post" enctype="multipart/form-data" name="review" >
							<table>
								<div class="star-rating space-x-4 mx-auto">
									<input type="radio" id="5-stars" name="r_score" value="5" v-model="ratings" /> 
									<label for="5-stars" class="star pr-4">★</label>
									<input type="radio" id="4-stars" name="r_score" value="4" v-model="ratings" /> 
									<label for="4-stars" class="star">★</label> 
									<input type="radio" id="3-stars" name="r_score" value="3" v-model="ratings" />
									<label for="3-stars" class="star">★</label> 
									<input type="radio" id="2-stars" name="r_score" value="2" v-model="ratings" /> 
									<label for="2-stars" class="star">★</label> 
									<input type="radio" id="1-star" name="r_score" value="1" v-model="ratings" /> 
									<label for="1-star" class="star">★</label>
								</div>
								<hr />
								<tr>
									<th id="manager_name"><br/></th>
								</tr>
								<tr>
									<th>
										<textarea rows="7" cols="52" name="r_text" placeholder="리뷰 작성"></textarea><br>
									</th>
								</tr>
								<tr>
							    	<th class="text-center" colspan="2"><input class="form-control" type="file" id="formFile" name="part_img"/></th>
							    </tr>
							</table>
						</form>
					</div>
					
					<div class="modal-footer">
						<button type="button" class="btn btn-primary" id="review" >저장</button>
						<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
					</div>
				</div>
			</div>
		</div>
	
 </body>
 
  <script type="text/javascript">
  
	  $(document).ready(function(){
		  $("button[veiwDog]").on("click",function(e){
		      e.preventDefault(); 
		      console.log("글쓰기 확인 모달.");
		     	let d_noVal = $(this).val();
				showReplyList(d_noVal); // 댓글 목록 가져와 뿌리기 호출 
		     
		   });
		// 댓글 목록 가져와 뿌려주기 함수 (페이징처리 X)
		function showReplyList(d_noVal){
			
			console.log("show reply list 호출!!"); 
			// 전체 댓글 가져오기 요청 
			$.ajax({
				type: "GET",
				url: "/member/dogModal/" + d_noVal + ".json",
				data: {d_no:d_noVal}, 
				success: function(result){
					console.log("요청 성공!!!"); 
					console.log(result);
					makeModal(result);
				}, 
				error: function(e){
					console.log("요청 실패....");
					console.log(e);
				}
			});
		}//showReplyList
  	
		let dogModalrow = $("#dogModal"); // 댓글목록 담을 컨테이너 div
		let username="${pInfo.username}"; //sec:authenticated로 저장한 로그인한 사라 정보 js로 가져오기
  	
		// 댓글 목록 만들어서 화면에 부착 함수 
		function makeModal(result){
			console.log("makeModal!!!!!" + result.length);
			// 부착할 html 목록 문자열로 만들기 
		   	let str = ""; 
            str += "<div class='col-lg-5 d-none d-lg-block'><div class='p-5'><img class='card-img-top' src='/resources/serverImg/";
            str += result.d_img+"' width='222' height='220' alt='Card image cap'>";
            str += "</div></div><div class='col-lg-7'>";
            str += "<form id='dogModifyPro' action='/member/dogModifyPro?${_csrf.parameterName}=${_csrf.token}' method='post' enctype='multipart/form-data' name='dogModify'><input type='hidden' name='d_no' value='"+result.d_no+"' /><table><br/><br/>";
            str += "<tr><th>이　　름　:　</th><th><input type='text' class='form-control form-control-user' name='d_name' value='"+result.d_name+"' readonly=''></th></tr>";
            str += "<tr><th>나이 (살)　:　</th><th><input type='number'' class='form-control form-control-user' name='d_age' value='" +result.d_age+ "'></th></tr>";
            str += "<tr><th>성　　별　:　</th><th><input class='form-control form-control-user' name='d_gender' value='"+ result.d_gender +"' readonly='' /></th></tr>";
            str += "<tr><th>종　　류　:　</th><th><input type='text' class='form-control form-control-user' name='d_type' value='"+ result.d_type +"'></th></tr>";
            str += "<tr><th>무게 (kg)　:　</th><th><input type='number' class='form-control form-control-user' name='d_weight' value='"+ result.d_weight +"'></th></tr>";
            str += "<tr><th>사　　진　:　</th><th><input class='form-control' width='420' type='file' id='formFile' name='part_img'/></th></tr>";
            str += "</table></form></div><div class='modal-footer col-lg-12' ><button type='button' class='btn btn-primary' id='dogModify' >수정</button>";
            str += "<button type='button' class='btn btn-secondary' data-bs-dismiss='modal'>취소</button></div>";
            dogModalrow.html(str);   // html 부착    
		}
		
 		//dogInsert
		//등록 or 추가 모달 눌렀을때 띄울 
		$("#dogInsert").on("click",function(e){
			e.preventDefault(); 
			console.log("등록 or 추가 확인 모달.");
			$("#dogInsertPro").submit();
		});
 	
 		//dogModify
		//수정 모달 눌렀을때 띄울 
		$("#dogModal").on("click","#dogModify",function(e){
			console.log("수정 클릭.");
			e.preventDefault(); 
			console.log("수정 확인 모달.");	
			$("#dogModifyPro").submit();
		});
 		
 		//Dog 삭제 눌렀을때 띄울 모달
		let pagingForm=$("#pagingForm");
		
		$("#deleteDogPro").on("click",function(e){
			
			
			e.preventDefault(); 
			// pagingForm의 action 속성값을 삭제할 컨트롤러로 변경
			pagingForm.attr("action", "/member/deleteDogPro"); 
			// read로 이동하기(form으로 요청) 
			pagingForm.submit(); 				
			
		});
		
		$("button[deleteDog]").on("click",function(e){
			let d_no =$(this).val();
			pagingForm.append("<input type='hidden' name='d_no' value='" + d_no+ "' />");
			e.preventDefault(); 
			console.log(d_no+"취소 확인 모달.");
			$("#addNew").modal("show");
		});
		
		
		
		
		
		
		
		//리뷰****
		$(document).ready(function(){
			//review 모달 글쓰기 눌렀을때 띄울 
			$("#review").on("click",function(e){
				e.preventDefault(); 
				console.log("리뷰 확인 모달.");
				reviewPro.submit();
			});
		});
		
		
		//유효성 검사
    	function checkField() {
    		let inputs = document.review;
    		if(! inputs.r_score.value) {
    			alert("평점을 입력해주세요.")
    			return false;
    		}
    		if(! inputs.r_text.value) {
    			alert("리뷰를 입력해주세요.")
    			return false;
    		}
    	}
		
		
 	 });// ready 
		
			
 		
 		
 //리뷰 쓰기 버튼 눌렀을 때 훈련사용	
function buttonclick (a, b){
	console.log(a);
	console.log(b);
	
	$("#manager_name").text(a);
	$("#reviewPro").append("<input type='hidden' name='m_no_manager' value='"+b+"' />");
	console.log(b+"리뷰 등록 확인 모달.");
	$("#reviewModal").modal("show");
}
	
	
  </script>
 </html>
 
 