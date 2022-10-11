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
    <meta name="_csrf"  content="${_csrf.token}">
	<meta name="_csrf_header"  content="${_csrf.headerName}">

    <title>SB Admin 2 - Register</title>

    <!-- Custom fonts for this template-->
    <link href="/resources/bum/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://getbootstrap.com/docs/5.2/assets/css/docs.css" rel="stylesheet">
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>

	<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
	
	

    <!-- Custom styles for this template-->
    <link href="/resources/bum/css/sb-admin-2.min.css" rel="stylesheet">
    <style>
		.id_ok{
		color:#008000;
		display: none;
		}
		.id_already{
		color:#6A82FB; 
		display: none;
		}
		.email_ok{
		color:#008000;
		display: none;
		}
		.email_already{
		color:#6A82FB; 
		display: none;
		}
		.nick_ok{
		color:#008000;
		display: none;
		}
		.nick_already{
		color:#6A82FB; 
		display: none;
		}
	</style>
    <!-- 주소 -->
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
	    function sample4_execDaumPostcode() {
	        new daum.Postcode({
	            oncomplete: function(data) {
	                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
	
	                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
	                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
	                var roadAddr = data.roadAddress; // 도로명 주소 변수
	                var extraRoadAddr = ''; // 참고 항목 변수
	
	                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
	                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
	                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
	                    extraRoadAddr += data.bname;
	                }
	                // 건물명이 있고, 공동주택일 경우 추가한다.
	                if(data.buildingName !== '' && data.apartment === 'Y'){
	                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	                }
	                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
	                if(extraRoadAddr !== ''){
	                    extraRoadAddr = ' (' + extraRoadAddr + ')';
	                }
	
	                // 우편번호와 주소 정보를 해당 필드에 넣는다.
	                document.getElementById('sample4_postcode').value = data.zonecode;
	                document.getElementById("sample4_roadAddress").value = roadAddr;
	                document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
	                
	                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
	                if(roadAddr !== ''){
	                    document.getElementById("sample4_extraAddress").value = extraRoadAddr;
	                } else {
	                    document.getElementById("sample4_extraAddress").value = '';
	                }
	
	                var guideTextBox = document.getElementById("guide");
	                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
	                if(data.autoRoadAddress) {
	                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
	                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
	                    guideTextBox.style.display = 'block';
	
	                } else if(data.autoJibunAddress) {
	                    var expJibunAddr = data.autoJibunAddress;
	                    guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
	                    guideTextBox.style.display = 'block';
	                } else {
	                    guideTextBox.innerHTML = '';
	                    guideTextBox.style.display = 'none';
	                }
	            }
	        }).open();
	    }

	function checkId(){
		
		let token =$("meta[name='_csrf']").attr("content");      
        let header=$("meta[name='_csrf_header']").attr("content");
		
        var id = $('#m_id').val(); //id값이 "id"인 입력란의 값을 저장
        
        $.ajax({
            url:'/member/idCheck.json', //Controller에서 요청 받을 주소
            type:'post', //POST 방식으로 전달
            data: {m_id:id},
       		beforeSend: function(xhr){
               	xhr.setRequestHeader(header,token);
            },
            success:function(result){ //컨트롤러에서 넘어온 cnt값을 받는다 
            	console.log(result);
                if(result == 0){ //result가 1이 아니면(=0일 경우) -> 사용 가능한 아이디 
                    $('.id_ok').css("display","inline-block"); 
                    $('.id_already').css("display", "none");
                } else { // result가 1일 경우 -> 이미 존재하는 아이디
                    $('.id_already').css("display","inline-block");
                    $('.id_ok').css("display", "none");
                    //alert("이미 사용중인 아이디입니다. 다시 입력해주세요.");
                    $('#m_id').val('');
                }
            },
            error:function(){
                alert("에러입니다");
            }
		});
   	}; 
   	
	function checkEmail(){
			
		let token =$("meta[name='_csrf']").attr("content");      
        let header=$("meta[name='_csrf_header']").attr("content");
		
        var m_email = $('#m_email').val(); //m_email값이 "m_email"인 입력란의 값을 저장
        
        $.ajax({
            url:'/member/emailCheck.json', //Controller에서 요청 받을 주소
            type:'post', //POST 방식으로 전달
            data: {m_email:m_email},
       		beforeSend: function(xhr){
               	xhr.setRequestHeader(header,token);
            },
            success:function(result){ //컨트롤러에서 넘어온 result값을 받는다 
            	console.log(result);
                if(result == 0){ //result가 1이 아니면(=0일 경우) -> 사용 가능한 이메일
                    $('.email_ok').css("display","inline-block"); 
                    $('.email_already').css("display", "none");
                } else { // result가 1일 경우 -> 이미 존재하는 이메일
                    $('.email_already').css("display","inline-block");
                    $('.email_ok').css("display", "none");
                    //alert("이미 사용중인 이메일입니다. 다시 입력해주세요.");
                    $('#m_email').val('');
                }
            },
            error:function(){
                alert("에러입니다");
			}
		});
	}; 
   	
	function checkNick(){
		
		let token =$("meta[name='_csrf']").attr("content");      
        let header=$("meta[name='_csrf_header']").attr("content");
		
        var m_nick = $('#m_nick').val(); //m_nick값이 "m_nick"인 입력란의 값을 저장
        
        $.ajax({
            url:'/member/nickCheck.json', //Controller에서 요청 받을 주소
            type:'post', //POST 방식으로 전달
            data: {m_nick:m_nick},
       		beforeSend: function(xhr){
               	xhr.setRequestHeader(header,token);
            },
            success:function(result){ //컨트롤러에서 넘어온 result값을 받는다 
            	console.log(result);
                if(result == 0){ //result가 1이 아니면(=0일 경우) -> 사용 가능한 이메일
                    $('.nick_ok').css("display","inline-block"); 
                    $('.nick_already').css("display", "none");
                } else { // result가 1일 경우 -> 이미 존재하는 이메일
                    $('.nick_already').css("display","inline-block");
                    $('.nick_ok').css("display", "none");
                    //alert("이미 사용중인 이메일입니다. 다시 입력해주세요.");
                    $('#m_nick').val('');
                }
            },
            error:function(){
                alert("에러입니다");
			}
		});
	}; 
	
	function passConfirm() {
		/* 비밀번호, 비밀번호 확인 입력창에 입력된 값을 비교해서 같다면 비밀번호 일치, 그렇지 않으면 불일치 라는 텍스트 출력.*/
		/* document : 현재 문서를 의미함. 작성되고 있는 문서를 뜻함. */
		/* getElementByID('아이디') : 아이디에 적힌 값을 가진 id의 value를 get을 해서 password 변수 넣기 */
		var password = document.getElementById('password');					//비밀번호 
		var passwordConfirm = document.getElementById('passwordConfirm');	//비밀번호 확인 값
		var confrimMsg = document.getElementById('confirmMsg');				//확인 메세지
		var correctColor = "#00ff00";	//맞았을 때 출력되는 색깔.
		var wrongColor ="#ff0000";	//틀렸을 때 출력되는 색깔
		
		if(password.value == passwordConfirm.value){//password 변수의 값과 passwordConfirm 변수의 값과 동일하다.
			confirmMsg.style.color = correctColor;/* span 태그의 ID(confirmMsg) 사용  */
			confirmMsg.innerHTML ="비밀번호 일치";/* innerHTML : HTML 내부에 추가적인 내용을 넣을 때 사용하는 것. */
		}else{
			confirmMsg.style.color = wrongColor;
			confirmMsg.innerHTML ="비밀번호 불일치";
		}
	}
	
	const myModal = document.getElementById('myModal')
	const myInput = document.getElementById('myInput')

	myModal.addEventListener('shown.bs.modal', () => {
	  myInput.focus()
	})
	
	</script>
	
</head>

<body class="bg-gradient-primary">

	<form action="/member/signup" method="post">
	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" /> <%-- 보완 --%>
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
	                                    <input type="text" class="form-control form-control-user" id="m_id" name="m_id" onchange="checkId()"  placeholder="아이디">
                                        <span class="id_ok">사용 가능한 아이디입니다.</span>
										<span class="id_already">중복된 아이디입니다.</span>
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
	                                        <input type="text" class="form-control form-control-user" id="m_nick" name="m_nick" onchange="checkNick()" placeholder="닉네임">
	                                        <span class="nick_ok">사용 가능한 닉네임입니다.</span>
											<span class="nick_already">중복된 닉네임입니다.</span>
	                                    </div>
	                                </div> 
	                                <div class="form-group">
	                                    <input type="email" class="form-control form-control-user" id="m_email" name="m_email" aria-describedby="emailHelp" onchange="checkEmail()" placeholder="Email">
	                                 	<span class="email_ok">사용 가능한 이메일입니다.</span>
										<span class="email_already">중복된 이메일입니다.</span>
	                                </div>
	                                <div class="form-group">
	                                    <input type="text" class="form-control form-control-user" name="m_phone" placeholder="전화번호">
	                                </div>
	                                
	                               <!-- <form action="/member/address" method="post"> address -->
	                                <span id="guide" style="color:#999;display:none"></span>
		                                <div class="form-group row">
		                                    <div class="col-sm-9 mb-6 mb-sm-0">
		                                        <input type="text" class="form-control form-control-user" id="sample4_postcode" name="a_zonecode" placeholder="우편번호">
		                                    </div>
		                                    <div class="col-sm-3">
		                                        <input type="button" class="form-control form-control-user" onclick="sample4_execDaumPostcode()" name="a_ck" value="위치검색" >
		                                    </div>
	                                	</div>
		                         	<div class="form-group row">
	                                    <div class="col-sm-6 mb-3 mb-sm-0">
	                                        <input type="text" class="form-control form-control-user" id="sample4_roadAddress" name="a_road" placeholder="도로명주소">
	                                    </div>
	                                    <div class="col-sm-6">
	                                        <input type="text" class="form-control form-control-user" id="sample4_jibunAddress"  placeholder="지번주소">
	                                    </div>
	                                </div>
	                                <div class="form-group row">
	                                    <div class="col-sm-6 mb-3 mb-sm-0"">
	                                        <input type="text" class="form-control form-control-user" id="sample4_detailAddress"  name="a_details" placeholder="상세주소">
	                                    </div>
	                                    <div class="col-sm-6">
	                                        <input type="text" class="form-control form-control-user" id="sample4_extraAddress" placeholder=참고항목>
	                                    </div>
	                                </div>
	                                <!-- </form>  -->
		                            <!--  -->    
									<div class="btn-group" role="group" aria-label="Basic radio toggle button group">
								      <input type="radio" class="btn-check" name="auth" id="btnradio1" autocomplete="off" value="member" checked="" >
								      <label class="btn btn-outline-primary" for="btnradio1">견주</label>
								    
								      <input type="radio" class="btn-check" name="auth" id="btnradio2" autocomplete="off" value="trainer">
								      <label class="btn btn-outline-primary" for="btnradio2">훈련매니저</label>
								    
								      <input type="radio" class="btn-check" name="auth" id="btnradio3" autocomplete="off" value="hairstylist">
								      <label class="btn btn-outline-primary" for="btnradio3">미용매니저</label>
								      
								      <input type="radio" class="btn-check" name="auth" id="btnradio4" autocomplete="off" value="manager">
								      <label class="btn btn-outline-primary" for="btnradio4">통합매니저</label>
								    </div>
										                           
	                                <div class="form-check form-switch" style="padding: 10">
										<input class="form-check-input" type="checkbox" role="switch" id="flexSwitchCheckDefault">
										<a class="form-check-label" for="flexSwitchCheckDefault">이용 약관 및 개인 정보 동의</a>
										<!-- Scrollable modal -->
										<div class="modal-dialog modal-dialog-scrollable">
										  ...
										</div>
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