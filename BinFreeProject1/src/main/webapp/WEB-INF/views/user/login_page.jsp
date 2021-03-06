<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 	

<%

 String success = (String) request.getAttribute("success");

%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="keywords" content="Bootstrap, Landing page, Template, Registration, Landing">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <meta name="author" content="Grayrids">
  <title>Bin-Free Homepage</title>

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
  <link rel="stylesheet" href="/resources/css/line-icons.css">
  <link rel="stylesheet" href="/resources/css/owl.carousel.css">
  <link rel="stylesheet" href="/resources/css/owl.theme.css">
  <link rel="stylesheet" href="/resources/css/nivo-lightbox.css">
  <link rel="stylesheet" href="/resources/css/magnific-popup.css">
  <link rel="stylesheet" href="/resources/css/animate.css">
  <link rel="stylesheet" href="/resources/css/color-switcher.css">
  <link rel="stylesheet" href="/resources/css/menu_sideslide.css">
  <link rel="stylesheet" href="/resources/css/main.css">
  <link rel="stylesheet" href="/resources/css/responsive.css">
  
  <script>
  	/* function login() {
  		var id = $('#email').val();
  		var pw = $('#password').val();
  		$.ajax({
  			type: 'post',
  			url: '/user/login',
  			dataType: 'json',
  			data: {'email' : id, 'password' : pw},
  			success: function() {
  				alert("로그인성공");
  			},
  			error: function(e){}
  		});
  	} */
  </script>

</head>

<body>
  <!-- Header Section Start -->
    <%@ include file="/WEB-INF/views/includes/header.jsp" %>
  <!-- Header Section End -->


<!-- Subcribe Section Start -->
	<div class="section"
		style="background-color: rgb(224, 241, 231); padding: 140px 0 70px 0;">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-2"></div>
				<div class="col-lg-6 col-md-8 col-xs-12">
					<div class="subscribe-form">
						<div class="form-wrapper">
							<div class="sub-title text-center">
								<h3>로그인</h3>
								<h6><c:out value="${error}"/></h6>
								<h6><c:out value="${logout}"/></h6>
							</div>
							<form method='post' action="/login">
								<div class="row">
									<div class="col-md-12 form-line">
										<div class="form-group">
											<!-- <input type="email" class="form-control" name="email" placeholder="아이디"> -->
											<input type="text" class="form-control" name="email"
												value="" placeholder="아이디">
										</div>
									</div>
									<div class="col-md-12 form-line">
										<div class="form-group">
											<!--  <input type="password" class="form-control" name="password" placeholder="비밀번호"> -->
											<input type="password" class="form-control" name="password" 
												placeholder="비밀번호" value="">
										</div>
									</div>
									<div class="col-md-12">
										<div class="form-submit">
											<button type="submit"
												class="btn btn-common btn-effect btn-login"
												style="background-color: #4b8a59">로그인</button>
											<br>
											<div style="text-align: center; margin-bottom: 20px;">
												<a href="#" col style="color: black;">아이디 찾기</a> <a href="#"
													style="color: black;">|</a> <a href="#" col
													style="color: black;">비밀번호 찾기</a>
											</div>
											<button type="submit"
												class="btn btn-common btn-effect btn-kakao">
												<img src="/resources/img/kakao.png" height="21px"
													width="21px">&nbsp;카카오 로그인
											</button>
											<div style="text-align: center;">
												<a href="/user/signup" style="color: black;">회원가입</a>
											</div>
											<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" /> 
										</div>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
				<div class="col-lg-2 col-md-2"></div>
			</div>
		</div>
	</div>
	<!-- Subcribe Section End -->
  


  <!-- Footer Section Start -->
    <%@ include file="/WEB-INF/views/includes/footer.jsp" %>
    
    
    <script type="text/javascript">
    $(document).ready(function(){
    	var success = '<%=success%>';
    	if(success !=  null && success != 'null'){
    		alert(success);
    	}
    })
    
    </script>
    
    
    
</body>


</html>