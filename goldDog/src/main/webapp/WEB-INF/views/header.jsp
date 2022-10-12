<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
	
	
	
<meta name="_csrf"  content="${_csrf.token}">
<meta name="_csrf_header"  content="${_csrf.headerName}">	
<!-- bootstrap core css -->
<link rel="stylesheet" type="text/css"
	href="/resources/feane/css/bootstrap.css" />

<!--owl slider stylesheet -->
<link rel="stylesheet" type="text/css"
	href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" />
<!-- nice select  -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/jquery-nice-select/1.1.0/css/nice-select.min.css"
	integrity="sha512-CruCP+TD3yXzlvvijET8wV5WxxEh5H8P4cmz0RFbKK6FlZ2sYl3AEsKlLPHbniXKSrDdFewhbmBK5skbdsASbQ=="
	crossorigin="anonymous" />
<!-- font awesome style -->
<link href="/resources/feane/css/font-awesome.min.css" rel="stylesheet" />

<!-- Custom styles for this template -->
<link href="/resources/feane/css/style.css" rel="stylesheet" />
<!-- responsive style -->
<link href="/resources/feane/css/responsive.css" rel="stylesheet" />

<header class="header_section">
	<div class="container">
		<nav class="navbar navbar-expand-lg custom_nav-container ">
			<a class="navbar-brand" href="index.html">
				<h3>금댕이</h3>
			</a>
			<div style="width: 300px;"></div>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class=""> </span>
			</button>

			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav  mx-auto ">
					<li class="nav-item "><a class="nav-link" href="/manager">Home
					</a></li>
					<li class="nav-item" id="t"><a class="nav-link"
						href="/main/tmain">훈련<span class="sr-only">(current)</span></a></li>
					<li class="nav-item active" id="h"><a class="nav-link"
						href="/main/hmain">미용</a></li>
					<li class="nav-item"><sec:authorize access="isAuthenticated()">
							<form action="/logout" method="post" id="logoutForm">
								<input type="hidden" name="${_csrf.parameterName}"
									value="${_csrf.token}" /> <a class="nav-link" href="#"
									id="logoutBtn">로그아웃</a>
							</form>
						</sec:authorize> <sec:authorize access="isAnonymous()">
							<a class="nav-link" href="/member/login">로그인</a>
						</sec:authorize></li>
				</ul>
				<div class="user_option">
					<form class="form-inline">
						<button class="btn  my-2 my-sm-0 nav_search-btn" type="submit">
							<i class="fa fa-search" aria-hidden="false"></i>
						</button>
					</form>
					<sec:authorize access="isAuthenticated()">
						<a href="/mypage" class="order_online"> 마이페이지 </a>
					</sec:authorize>
					<sec:authorize access="hasRole('ROLE_TRAINER')">
						<a href="/manager" class="order_online"> 훈련 마이페이지 </a>
					</sec:authorize>
					<sec:authorize access="hasRole('ROLE_HAIR')">
						<a href="/manager" class="order_online"> 헤어 마이페이지 </a>
					</sec:authorize>
				</div>
			</div>
		</nav>
	</div>
</header>

