<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SB Admin 2 - Register</title>

    <!-- Custom fonts for this template-->
    <link href="/resources/bum/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://getbootstrap.com/docs/5.2/assets/css/docs.css" rel="stylesheet">
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>

    <!-- Custom styles for this template-->
    <link href="/resources/bum/css/sb-admin-2.min.css" rel="stylesheet">
	
	
</head>

<body class="bg-gradient-primary">

	<form action="/member/signup" method="post">
	
	    <div class="container">
	
	        <div class="card o-hidden border-0 shadow-lg my-5">
	            <div class="card-body p-0">
	                <!-- Nested Row within Card Body -->
	                <div class="row">
	                    <div class="col-lg-5 d-none d-lg-block bg-register-image"></div>
	                    <div class="col-lg-7">
	                        <div class="p-5">
	                            <div class="text-center">
	                                <h1 class="h4 text-gray-900 mb-4">Create an ID !</h1>
	                            </div>
	                            <form class="user">
	                                <div class="form-group row">
	                                    <div class="col-sm-9 mb-6 mb-sm-0">
	                                        <input type="text" class="form-control form-control-user" name="m_id" placeholder="아이디">
	                                    </div>
	                                    <div class="col-sm-3">
	                                        <input type="button" class="form-control form-control-user" name="m_ck" value="중복확인" >
	                                    </div>
	                                </div>
	                               
	                                <div class="form-group row">
	                                    <div class="col-sm-6 mb-3 mb-sm-0">
	                                        <input type="password" class="form-control form-control-user" name="m_pw" placeholder="비밀번호">
	                                    </div>
	                                    <div class="col-sm-6">
	                                        <input type="password" class="form-control form-control-user" name="m_pwch" placeholder="비밀번호 확인">
	                                    </div>
	                                </div>
	                                <div class="form-group row">
	                                    <div class="col-sm-6 mb-3 mb-sm-0">
	                                        <input type="text" class="form-control form-control-user" name="m_name" placeholder="이름">
	                                    </div>
	                                    <div class="col-sm-6">
	                                        <input type="text" class="form-control form-control-user" name="m_nick" placeholder="닉네임">
	                                    </div>
	                                </div>
	                                <div class="form-group">
	                                    <input type="email" class="form-control form-control-user" name="m_email" aria-describedby="emailHelp" placeholder="Email">
	                                </div>
	                                <div class="form-group">
	                                    <input type="text" class="form-control form-control-user" name="m_phone" placeholder="전화번호">
	                                </div>
	                                
	                                <!-- address -->
		                                <div class="form-group row">
		                                    <div class="col-sm-9 mb-6 mb-sm-0">
		                                        <input type="text" class="form-control form-control-user" name="a_zonecode" placeholder="우편번호">
		                                    </div>
		                                    <div class="col-sm-3">
		                                        <input type="button" class="form-control form-control-user" name="a_ck" value="위치검색" >
		                                    </div>
	                                	</div>
		                                <div class="form-group">
		                                    <input type="text" class="form-control form-control-user" name="a_road" placeholder="도로명">
		                                </div>
		                                <div class="form-group">
		                                    <input type="text" class="form-control form-control-user" name="a_details" placeholder="상세주소">
		                                </div>
		                            <!--  -->    
									<div class="btn-group" role="group" aria-label="Basic radio toggle button group">
								      <input type="radio" class="btn-check" name="m_type" id="btnradio1" autocomplete="off" value="owner" checked="" >
								      <label class="btn btn-outline-primary" for="btnradio1">견주</label>
								    
								      <input type="radio" class="btn-check" name="m_type" id="btnradio2" autocomplete="off" value="trainer">
								      <label class="btn btn-outline-primary" for="btnradio2">훈련매니저</label>
								    
								      <input type="radio" class="btn-check" name="m_type" id="btnradio3" autocomplete="off" value="hairstylist">
								      <label class="btn btn-outline-primary" for="btnradio3">미용매니저</label>
								      
								      <input type="radio" class="btn-check" name="m_type" id="btnradio4" autocomplete="off" value="manager">
								      <label class="btn btn-outline-primary" for="btnradio4">통합매니저</label>
								    </div>
										                           
	                                <div class="form-check form-switch">
										<input class="form-check-input" type="checkbox" role="switch" id="flexSwitchCheckDefault">
										<a class="form-check-label" for="flexSwitchCheckDefault">이용 약관 및 개인 정보 동의</a>
									</div>
	                                
	                                <hr>
	                                <input type="submit" class="btn btn-primary btn-user btn-block" value="회원가입" /> 
	                                <hr>
	                                
	                            </form>
	                            <div class="text-center">
	                                <a class="small" href="login">Already have an ID ? Login!</a>
	                            </div>
	                        </div>
	                    </div>
	                </div>
	            </div>
	        </div>
	
	    </div>
	
	    <!-- Bootstrap core JavaScript-->
	    <script src="vendor/jquery/jquery.min.js"></script>
	    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	
	    <!-- Core plugin JavaScript-->
	    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
	
	    <!-- Custom scripts for all pages-->
	    <script src="js/sb-admin-2.min.js"></script>
	</form>

</body>
</html>