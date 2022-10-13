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
	                                <a href="#home" class="nav-link current">
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
	                                <a href="#about" class="nav-link">
	                                    <div class="triangle-right"></div>
	                                    <i class="fas fa-user-friends nav-icon"></i>
	                                    결제수단
	                                </a>
	                            </li>
	                            <li class="nav-item">
	                                <a href="#contact" class="nav-link">
	                                    <div class="triangle-right"></div>
	                                    <i class="fas fa-envelope nav-icon"></i>
	                                    Contact
	                                </a>
	                            </li>
	                            <li class="nav-item">
	                                <a href="https://paypal.me/templatemo" class="nav-link external" target="_parent" rel="sponsored">
	                                    <div class="triangle-right"></div>
	                                    <i class="fas fa-external-link-alt nav-icon"></i>
	                                    External
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
								</div>
                        	</fieldset>
                        </div>
                    </section>
                    
                    <div>
                    	<div class="Estimate">
		                    	<details class="Estimate_details" id="${ manager.m_no }" onclick="ondetails(this.id)">
		    						<summary>${ manager.m_name }</summary>
		    						<p id="ammo">${manager}</p>
		                    	</details>
		                    	<div class="Estimate_interval"></div> 
                    		<!-- <c:forEach var="manager" items="${ managers }" end="${ managers.size }">  -->	
                    		<!-- </c:forEach> -->
                    	</div>
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
															<button type="button" id="d_no" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal2">
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
                    
                	<!-- Contact section -->
	                <div class="tm-section-wrap" id = "contact">
	                    <div id="contact" class="tm-section">
	                        <h2 class="tm-text-primary">Contact Upright</h2>
	                        <hr class="mb-5">
							<div class="row">
	                            <div class="col-xl-6 tm-contact-col-l mb-4">
	                                <form id="contact-form" action="" method="POST" class="tm-contact-form">
	                                    <div class="form-group">
	                                        <input type="text" name="name" class="form-control rounded-0" placeholder="Name" required="">
	                                    </div>
	                                    <div class="form-group">
	                                        <input type="email" name="email" class="form-control rounded-0" placeholder="Email" required="">
	                                    </div>
	                                    <div class="form-group">
	                                        <select class="form-control" id="contact-select" name="inquiry">
	                                            <option value="-">Subject</option>
	                                            <option value="sales">Sales &amp; Marketing</option>
	                                            <option value="creative">Creative Design</option>
	                                            <option value="uiux">UI / UX</option>
	                                        </select>
	                                    </div>
	                                    <div class="form-group">
	                                        <textarea rows="8" name="message" class="form-control rounded-0" placeholder="Message" required=""></textarea>
	                                    </div>
	            
	                                    <div class="form-group tm-text-right">
	                                        <button type="submit" class="btn btn-primary">Send</button>
	                                    </div>
	                                </form>
	                            </div>
	                            <div class="col-xl-6 tm-contact-col-r">
	                                <!-- Map -->
	                                <div class="mapouter mb-4">
	                                    <div class="gmap_canvas">
	                                        <iframe width="100%" height="520" id="gmap_canvas" src="https://maps.google.com/maps?q=Av.+L%C3%BAcio+Costa,+Rio+de+Janeiro+-+RJ,+Brazil&amp;t=&amp;z=13&amp;ie=UTF8&amp;iwloc=&amp;output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe>
	                                    </div>
	                                </div>
	            
	                                <!-- Address -->
	                                <address class="mb-4">
	                                    120-240 eget purus luctus sodales. Sed<br>
	                                    auctor odio quis ligula dignissim efficitur<br>
	                                    vitae vitae quam 16502
	                                </address>
	            
	                                <!-- Links -->
	                                <ul class="tm-contact-links mb-4">
	                                    <li class="mb-2">
	                                        <a href="tel:0100200340">
	                                            <i class="fas fa-phone mr-2 tm-contact-link-icon"></i>
	                                            Tel: 010-020-0340
	                                        </a>
	                                    </li>
	                                    <li>
	                                        <a href="mailto:info@company.com">
	                                            <i class="fas fa-at mr-2 tm-contact-link-icon"></i>
	                                            Email: info@company.com
	                                        </a>
	                                    </li>
	                                </ul>
	                                <ul class="tm-contact-social">
	                                    <li><a href="https://fb.com/templatemo" class="tm-social-link"><i class="fab fa-facebook"></i></a></li>
	                                    <li><a href="https://twitter.com" class="tm-social-link"><i class="fab fa-twitter"></i></a></li>
	                                    <li><a href="https://instagram.com" class="tm-social-link"><i class="fab fa-instagram"></i></a></li>
	                                    <li><a href="https://youtube.com" class="tm-social-link"><i class="fab fa-youtube"></i></a></li>
	                                </ul>
								</div>
							</div>
						</div>
					</div>
					
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
				<!-- 
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
									<th><input type="text" class="form-control form-control-user" name="d_name" value="${dog[i].d_name}"></th>
								</tr>
								<tr>
									<th>나　　이　:　</th>
									<th><input type="text" class="form-control form-control-user" name="d_age" value="${dog[i].d_age}살"></th>
								</tr>
								<tr>
									<th>성　　별　:　</th>
									<th><input class="form-control form-control-user" value="${dog[i].d_gender}"  readonly="" /></th>
								</tr>
								<tr>
									<th>종　　류　:　</th>
									<th><input type="text" class="form-control form-control-user" name="d_type" value="${dog[i].d_type}"></th>
								</tr>
								<tr>
									<th>무　　게　:　</th>
									<th><input type="text" class="form-control form-control-user" name="d_weight" value="${dog[i].d_weight}kg"></th>
								</tr>
							</table>
						</form>
					</div>
					<div class="modal-footer col-lg-12" >
						<button type="button" class="btn btn-primary" id="review" >수정</button>
						<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
					</div>
				 -->
				</div>
				
				
				
			</div>
		</div>
	</div>
	
	
 </body>
 
  <script type="text/javascript">
  $(document).ready(function(){
		let d_noVal = "${dog.d_no}";		// 본문글 고유번호 
		console.log("m_no : " + m_no);
  	
		
		
		
		
		showReplyList(); // 댓글 목록 가져와 뿌리기 호출 
  	
		// 댓글 목록 가져와 뿌려주기 함수 (페이징처리 X)
		function showReplyList(){
			console.log("show reply list 호출!!"); 
			// 전체 댓글 가져오기 요청 
			$.ajax({
				type: "GET",
				url: "/member/dogModal/" + d_no + ".json",
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
				str += result.d_img+"' width='222' height='180' alt='Card image cap'>";
				str += "<input class='form-control' width='420' type='file' id='formFile' name='img'/></div></div><div class='col-lg-7'>";
				str += "<form id='dogModfiyPro' action='/member/dogModfiyPro?${_csrf.parameterName}=${_csrf.token}' method='post' enctype='multipart/form-data' name='dogModfiy' onsubmit='return checkField()'> <table><br/><br/>";
				str += "<tr><th>이　　름　:　</th><th><input type='text' class='form-control form-control-user' name='d_name' value='"+result.d_name+"'></th></tr>";
				str += "<tr><th>나　　이　:　</th><th><input type='text' class='form-control form-control-user' name='d_age' value='" +result.d_age+ "살'></th></tr>";
				str += "<tr><th>성　　별　:　</th><th><input class='form-control form-control-user' value='"+ result.d_gender +"'  readonly='' /></th></tr>";
				str += "<tr><th>종　　류　:　</th><th><input type='text' class='form-control form-control-user' name='d_type' value='"+ result.d_type +"'></th></tr>";
				str += "<tr><th>무　　게　:　</th><th><input type='text' class='form-control form-control-user' name='d_weight' value='"+ result.d_weight +"kg'></th></tr>";
				str += "</table></form></div><div class='modal-footer col-lg-12' ><button type='button' class='btn btn-primary' id='review' >수정</button>";
				str += "<button type='button' class='btn btn-secondary' data-bs-dismiss='modal'>취소</button></div>";
				
				dogModalrow.html(str);	// html 부착 
		}
 	 });// ready 
 	 
 	 
 	 
  </script>

 </html>
 
 