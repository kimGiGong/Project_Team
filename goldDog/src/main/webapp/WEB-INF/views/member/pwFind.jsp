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
    
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="_csrf"  content="${_csrf.token}">
	<meta name="_csrf_header"  content="${_csrf.headerName}">

    <title>SB Admin 2 - Forgot Password</title>

    <!-- Custom fonts for this template-->
    <link href="/resources/bum/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="/resources/bum/css/sb-admin-2.min.css" rel="stylesheet">
	
	<script src="http://code.jquery.com/jquery-latest.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){
			
			let token =$("meta[name='_csrf']").attr("content");      
	        let header=$("meta[name='_csrf_header']").attr("content");
			
			$(function(){
				$("#findBtn").click(function(){
					$.ajax({
						url : "/member/pwFind",
						type : "POST",
						data : {
							m_id : $("#id").val(),
							m_email : $("#email").val()
						},
	               		beforeSend: function(xhr){
	                   	xhr.setRequestHeader(header,token);
	                	},
						success : function(result) {
							alert(result);
						},
					})
				});
			});
		});
	</script>
</head>

<body class="bg-gradient-primary">
<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" /> <%-- 보완 --%>
    <div class="container">

        <!-- Outer Row -->
        <div class="row justify-content-center">

            <div class="col-xl-10 col-lg-12 col-md-9">

                <div class="card o-hidden border-0 shadow-lg my-5">
                    <div class="card-body p-0">
                        <!-- Nested Row within Card Body -->
                        <div class="row">
                            <div class="col-lg-6 d-none d-lg-block bg-password-image"></div>
                            <div class="col-lg-6">
                                <div class="p-5">
                                    <div class="text-center">
                                        <h1 class="h4 text-gray-900 mb-2">Forgot Your Password?</h1>
                                    </div>
                                    <br />
                                    <form class="user">
                                        <div class="form-group">
                                            <input type="text" class="form-control form-control-user" id="id" name="id"
                                            	aria-describedby="emailHelp" placeholder="아이디" required>
                                        </div>
                                        
                                        <div class="form-group">
                                            <input type="email" class="form-control form-control-user" id="email" name="email"
                                            	aria-describedby="emailHelp" placeholder="Email" required>
                                        </div>
                                        <!-- <a href="login.html" class="btn btn-primary btn-user btn-block"> Send Password </a> -->
                                        <button type="button" id="findBtn" class="btn btn-primary btn-user btn-block">Send Password</button>
                                    </form>
                                    <hr>
                                    <div class="text-center">
                                        <a class="small" href="signup">Create an ID !</a>
                                    </div>
                                </div>
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