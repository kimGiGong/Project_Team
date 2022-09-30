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
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="/resources/bum/css/sb-admin-2.min.css" rel="stylesheet">
	<style type="text/css">
		#button {
			position : relative;
			width: 70px;
			height: 5px;
			top: 0;
			bottom: 0;
			right: 10px;
			margin: auto 0;
			border-radius: 24px;
		}
		#m_id {
			position: relative;
		}
		
	</style>
	
</head>

<body class="bg-gradient-primary">

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
                            	<div class="form-group">
                                    <input type="text" class="form-control form-control-user" name="m_id"
                                        placeholder="아이디">
                                </div>
                               
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                        <input type="password" class="form-control form-control-user" name="m_pw"
                                            placeholder="비밀번호">
                                    </div>
                                    <div class="col-sm-6">
                                        <input type="password" class="form-control form-control-user" name="m_pwch"
                                            placeholder="비밀번호 확인">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                        <input type="text" class="form-control form-control-user" name="m_name"
                                            placeholder="이름">
                                    </div>
                                    <div class="col-sm-6">
                                        <input type="text" class="form-control form-control-user" name="m_nick"
                                            placeholder="닉네임">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control form-control-user" name="m_email"
                                        placeholder="Email">
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control form-control-user" name="m_phone"
                                        placeholder="전화번호">
                                </div>
                                
                                <!-- address -->
	                                <div class="form-group">
	                                    <input type="text" class="form-control form-control-user" name="a_zonecode"
	                                        placeholder="우편번호">
	                                </div>
	                                <div class="form-group">
	                                    <input type="text" class="form-control form-control-user" name="a_road"
	                                        placeholder="도로명">
	                                </div>
	                                <div class="form-group">
	                                    <input type="text" class="form-control form-control-user" name="a_details"
	                                        placeholder="상세주소">
	                                </div>
	                            <!--  -->    
								<div class="btn-group" role="group" aria-label="Basic radio toggle button group">
									<input type="radio" class="btn-check" name="btnradio" id="btnradio1" checked>
									<label class="btn btn-primary" for="btnradio1">
										<i class="fas fa-search fa-sm"></i>훈련 매니저
									</label>
								
									<input type="radio" class="btn-check" name="btnradio" id="btnradio2" >
									<label class="btn btn-outline-primary" for="btnradio2">미용 매니저</label>
								</div>  
									<a href="#" class="btn btn-info btn-circle">
                                        <i class="fas fa-info-circle"></i>
                                    </a>                               
                                <div class="form-check form-switch">
									<input class="form-check-input" type="checkbox" role="switch" id="flexSwitchCheckDefault">
									<a class="form-check-label" for="flexSwitchCheckDefault">이용 약관 및 개인 정보 동의</a>
								</div>

	                           	 
                                
                                <hr>
                                <a href="login.html" class="btn btn-primary btn-user btn-block">
                                    가입하기
                                </a>
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

</body>
</html>