<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <script src="https://cdn.ckeditor.com/ckeditor5/35.1.0/classic/ckeditor.js"></script>
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
	                                    <i class="fas fa-images nav-icon"></i>
	                                    견적서
	                                </a>
	                            </li>
	                            <li class="nav-item">
	                                <a href="selUpload" class="nav-link">
	                                    <div class="triangle-right"></div>
	                                    <i class="fas fa-user-friends nav-icon"></i>
	                                    매니저 등록 정보
	                                </a>
	                            </li>
	                            <li class="nav-item">
	                                <a href="#about" class="nav-link">
	                                    <div class="triangle-right"></div>
	                                    <i class="fas fa-home nav-icon"></i>
	                                    활동지역
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
	                            <li class="nav-item">
	                            	<div class="input-block">
									  <input type="text" name="input-text" id="input-text" required spellcheck="false" value="0" >
									  <span class="placeholder">
									    누적금액
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
              <!--          <h3 class="tm-text-primary">${manager.m_name}</h3> -->
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
		                    	<details class="Estimate_details" id="${ member.m_no }" onclick="ondetails(this.id)">
		    						<summary>${ member.m_name }</summary>
		    						<p id="ammo">${ member }</p>
		                    	</details>
		                    	<div class="Estimate_interval"></div> 
                    		<!-- <c:forEach var="manager" items="${ managers }" end="${ managers.size }">  -->	
                    		<!-- </c:forEach> -->
                    	</div>
                    </div>
                    
                    <div>
                    	<div class="manager_info">
                    	
                    		<div id="HTMLeditor"></div>
                    	</div>
                    </div>
                    
                    
                    
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
 </body>
 </html>