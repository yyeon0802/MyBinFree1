<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html>
<html lang="en">

<head>

<!-- security token -->
<meta name="_csrf" content="${_csrf.token}" />
<meta name="_csrf_header" content="${_csrf.headerName}" />

<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
<meta name="keywords"
	content="Bootstrap, Landing page, Template, Registration, Landing">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
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
<link rel="stylesheet" href="/resources/css/mypage.css">

<style>
@import
	url('https://fonts.googleapis.com/css2?family=Manrope:wght@200&display=swap')
	;

.cross {
	padding: 10px;
	color: #1abc9c;;
	cursor: pointer;
	font-size: 23px
}

.cross i {
	margin-top: -5px;
	cursor: pointer
}

.comment-box {
	padding: 5px
}

.comment-area textarea {
	resize: none;
	border: 1px solid #1abc9c;
}

.form-control:focus {
	color: #495057;
	background-color: #fff;
	border-color: #ffffff;
	outline: 0;
	box-shadow: 0 0 0 1px #1abc9c !important
}

.send {
	color: #fff;
	background-color: #1abc9c;
	border-color: #1abc9c;
}

.send:hover {
	color: #fff;
	background-color: #1abc9c;
	border-color: #1abc9c;
}

.rating {
	display: inline-flex;
	margin-top: -10px;
	flex-direction: row-reverse
}

.rating>input {
	display: none
}

.rating>label {
	position: relative;
	width: 28px;
	font-size: 35px;
	color: #1abc9c;
	cursor: pointer
}

.rating>label::before {
	content: "\2605";
	position: absolute;
	opacity: 0
}

.rating>label:hover:before, .rating>label:hover ~label:before {
	opacity: 1 !important
}

.rating>input:checked ~label:before {
	opacity: 1
}

.rating:hover>input:checked ~label:before {
	opacity: 0.4
}

.starR1 {
	background:
		url('http://miuu227.godohosting.com/images/icon/ico_review.png')
		no-repeat -52px 0;
	background-size: auto 100%;
	width: 15px;
	height: 30px;
	float: left;
	text-indent: -9999px;
	cursor: pointer;
}

.starR2 {
	background:
		url('http://miuu227.godohosting.com/images/icon/ico_review.png')
		no-repeat right 0;
	background-size: auto 100%;
	width: 15px;
	height: 30px;
	float: left;
	text-indent: -9999px;
	cursor: pointer;
}

.starR1.on {
	background-position: 0 0;
}

.starR2.on {
	background-position: -15px 0;
}
</style>

<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<script>
window.onload = function() {
	
		function show() {
		    var p = document.getElementById('pwd');
		    p.setAttribute('type', 'text');
		    
		}
		
		function hide() {
		    var p = document.getElementById('pwd');
		    p.setAttribute('type', 'password');
		    
		}
		
		var pwShown = 0;
		
		document.getElementById("sbutton").addEventListener("click", function () {
		    if (pwShown == 0) {
		        pwShown = 1;
		        show();
			    this.setAttribute('value', '?????????');  

		    } else {
		        pwShown = 0;
		        hide();
			    this.setAttribute('value', '?????????');  
		
		    }
		}, false);
		
	}

</script>

<script>
function findAddress() {
	new daum.Postcode({
        oncomplete: function(data) {
            // ???????????? ???????????? ????????? ??????????????? ????????? ????????? ???????????? ??????.

            // ??? ????????? ?????? ????????? ?????? ????????? ????????????.
            // ???????????? ????????? ?????? ?????? ????????? ??????('')?????? ????????????, ?????? ???????????? ?????? ??????.
            var addr = ''; // ?????? ??????
            var extraAddr = ''; // ???????????? ??????

            //???????????? ????????? ?????? ????????? ?????? ?????? ?????? ?????? ????????????.
            if (data.userSelectedType === 'R') { // ???????????? ????????? ????????? ???????????? ??????
                addr = data.roadAddress;
            } else { // ???????????? ?????? ????????? ???????????? ??????(J)
                addr = data.jibunAddress;
            }

            // ???????????? ????????? ????????? ????????? ???????????? ??????????????? ????????????.
            if(data.userSelectedType === 'R'){
                // ??????????????? ?????? ?????? ????????????. (???????????? ??????)
                // ???????????? ?????? ????????? ????????? "???/???/???"??? ?????????.
                if(data.bname !== '' && /[???|???|???]$/g.test(data.bname)){
                    extraAddr += data.bname;
                }
                // ???????????? ??????, ??????????????? ?????? ????????????.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // ????????? ??????????????? ?????? ??????, ???????????? ????????? ?????? ???????????? ?????????.
                if(extraAddr !== ''){
                    extraAddr = ' (' + extraAddr + ')';
                }
                // ????????? ??????????????? ?????? ????????? ?????????.
                document.getElementById("inputLoc").value = extraAddr;
            
            } else {
                document.getElementById("inputLoc").value = '';
            }

            // ??????????????? ?????? ????????? ?????? ????????? ?????????.
            document.getElementById('zipCode').value = data.zonecode;
            document.getElementById("loc").value = addr;
            // ????????? ???????????? ????????? ????????????.
            document.getElementById("inputLoc").focus();
        }
    }).open();
}
</script>

<script>

function modify_userInfo(){
	
	var token = $("meta[name='_csrf']").attr("content");
	var header = $("meta[name='_csrf_header']").attr("content");
	
	var email = $('#email').val();
	var phone = $('#phone').val();
	
	console.log(email);
	console.log(phone);	
			
	$.ajax({
		
		type: 'post',
		url:'/user/modify_userInfo',
		beforeSend : function(xhr)
        {   /*???????????? ???????????? ?????? ????????? csrf?????? ????????????*/
			xhr.setRequestHeader(header, token);
        },
		contentType : "application/json; charset=UTF-8",
		data : JSON.stringify({'email' : email, 'phone' : phone}),
		dataType: 'text',
		success: function(){
			alert("?????? ????????? ?????? ???????????????.");
			window.location.reload();
		},
		error:function(e){
			console.log(e);
		}
	});
}



function modify_subInfo() {
	
	var token = $("meta[name='_csrf']").attr("content");
	var header = $("meta[name='_csrf_header']").attr("content");
	
	var subName = $('#sub_name').val();
	var subPhone = $('#sub_phone').val();
	var zipCode = $('#zipCode').val();
	var loc = $('#loc').val();
	var inputLoc = $('#inputLoc').val(); 			

	$.ajax({
		type: 'post',
		url: '/user/modify_subInfo',
		beforeSend : function(xhr) {   
			xhr.setRequestHeader(header, token);
        },
		contentType : "application/json; charset=UTF-8",
		dataType: 'text',
		data: JSON.stringify({'subName' : subName, 'subPhone' : subPhone, 'zipCode' : zipCode, 'loc' : loc, 'inputLoc' : inputLoc}),
		success: function() {
			alert("?????????????????????.");
			window.location.replace();
			console.log("?????????????????");
		},
		error: function(e){console.log(e);}
	});
}  



function password_check(password) {    
	   // ???????????? ?????? ?????????      
	    var regex= /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,16}$/;
	    if(!regex.test(password)){
	         return false;
	    } else {
	       return true;
	    }
	}



	function modify_pwd() {
	    
	   var token = $("meta[name='_csrf']").attr("content");
	   var header = $("meta[name='_csrf_header']").attr("content");
	    
	   var password = $('#pwd').val();
	   
	   if( password == '' || password == 'undefined') {
	      alert("????????? ??????????????? ???????????? ??? ????????????.")
	      return;
	   }
	   
	   if(!password_check(password)){

	      alert("???????????? ??? ????????????. ??????????????? ???????????????.");
	      
	      $("button[name=submitPwd]").blur(function(){
	      
	         /* var password = $('#pwd').val(); */
	         
	          if(! password_check(password) ) {
	                 $("#error-password").text('??????+??????+???????????? 8?????? ???????????? ??????????????? ?????????.');
	               /*  $(this).focus(); */               
	              }else {
	               $("#error-password").text('');
	              }
	      });
	   } else {
	      
	      $.ajax({
	         
	         type: 'post',
	         url:'/user/modify_pwd',
	         beforeSend : function(xhr)
	           {   /*???????????? ???????????? ?????? ????????? csrf?????? ????????????*/
	            xhr.setRequestHeader(header, token);
	           },
	         contentType : "application/json; charset=UTF-8",
	         data : password,
	         dataType: 'text',
	         success: function(){
	            alert("??????????????? ?????????????????????.");
	            window.location.reload();
	         },
	         error:function(e){
	            console.log(e);
	         }
	      });
	   }
	   
	      
	 }



 function bye_user() {
	 
	var token = $("meta[name='_csrf']").attr("content");
	var header = $("meta[name='_csrf_header']").attr("content");
	 
	 var email = $('#email').val();
	 
	 if(confirm("?????? ?????? ???????????????????") == true){
		 $.ajax({			
			 type: 'post',
			 url: '/user/bye_user',
			 beforeSend : function(xhr) {   
					xhr.setRequestHeader(header, token);
		      },
			 contentType : 'application/json; charset=UTF-8',
			 dataType: 'text',
			 data: email,
			 success: function(){
				 location.replace("/");
			 }, error: function(e){console.log(e);}
		 });
		 
	 }else {
		 window.opener.location.reload();
		 self.close();
	 }	 
	 
 }
 </script>



</head>

<body>
	<!-- Header Section Start -->
	<%@ include file="/WEB-INF/views/includes/header.jsp"%>
	<!-- Header Section End -->

	<!-- Mypage Section Start -->
	<section id="tabs">
		<div class="container">
			<h6 class="section-title h1">&nbsp</h6>
			<div class="row">
				<div class="col-xs-12 col-md-12">
					<!-- col-md-12 ?????? -->
					<nav>
						<div class="nav nav-tabs nav-fill" id="nav-tab" role="tablist">
							<a class="nav-item nav-link active" id="nav-home-tab"
								data-toggle="tab" href="#nav-myinfo" role="tab"
								aria-controls="nav-home" aria-selected="true">?????????</a> <a
								class="nav-item nav-link" id="nav-profile-tab" data-toggle="tab"
								href="#nav-subinfo" role="tab" aria-controls="nav-profile"
								aria-selected="false">?????? ??????</a>
						</div>
					</nav>
					<div class="tab-content py-3 px-3 px-sm-0" id="nav-tabContent">
						<div class="tab-pane fade show active" id="nav-myinfo"
							role="tabpanel" aria-labelledby="nav-home-tab">
							<div class="row">
								<c:choose>
									<c:when test="${userInfo.password == null}">
										<div class="container">
											<div class="row">
												<div class="col-md-12">
													<!--matching image div-->
													<div class="p-3 py-5" style="margin-top: 100px;">
														<div class="mt-5 text-center">
															<img src="/resources/img/portfolio/nosub.png" alt="" />
														</div>
														<div class="mt-5 text-center">
															<p>
																<br />
															</p>
															<h2 class="section-title" style="font-size: 20px;">?????????
																????????? ????????????.</h2>
														</div>
													</div>
												</div>
											</div>
										</div>
									</c:when>
									<c:otherwise>
										<!-- myinfo Start -->
										<div class="col-md-7 border-right" id="myinfo">
											<!--border-right-->
											<div class="p-3 py-5">
												<div
													class="d-flex justify-content-between align-items-center mb-3">
													<h6 class="text-right">??? ??????</h6>
												</div>
												<div class="row mt-2">
													<div class="col-md-12">
														<label class="labels">??????</label><input type="text"
															class="form-control" value="${userInfo.name }" id="name"
															readonly="true" />
													</div>
													<div class="col-md-12">
														<label class="labels">????????????</label><input type="text"
															class="form-control" id="phone"
															value="${userInfo.phone }" />
													</div>
													<div class="col-md-12">
														<label class="labels">????????? ID</label><input type="text"
															class="form-control" id="email" value="${userInfo.email}"
															readonly="true" />
													</div>
												</div>
												<div class="mt-5 text-center">
													<button class="btn btn-common btn-effect"
														id="userinfo_submit" onclick="modify_userInfo()">???
														?????? ??????</button>
													&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
													<button class="btn btn-common btn-effect" id="submit"
														onclick="bye_user()">?????? ??????</button>
												</div>
											</div>
										</div>
										 <div class="col-md-4">
				                  <div class="p-3 py-5">
				                    <div class="d-flex justify-content-between align-items-center mb-3">
				                      <h6 class="text-right">????????????</h6>
				                    </div>
				                    <div class="row mt-2">
				                      <div class="col-md-12"><label class="labels">?????? ????????????</label><input type="password"
				                          class="form-control" value="${userInfo.password }" readonly="true" /></div>
				                    </div>
				                    <div class="row mt-2">
				                      <div class="col-md-12"><label class="labels">????????? ????????????</label><label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
				                      <input type="button" id="sbutton" value="?????????" class="btn btn-effect" 
				                      style="margin-bottom: 10px; background-color: #199DD5; position: relative; z-index: 1; padding: 5px 5px; border-radius: 15px;" color="white";/>
				                      <input type="password" class="form-control" id="pwd" name="password" value="" placeholder="?????? ??????????????? ????????? ?????? ????????????."></div>
				                      <div id="error-password" class=" result-check" style="color: red; padding-left: 20px; padding-bottom: 7px"></div>
				                    </div>
				                  </div>
				                  <div class="mt-2 text-center">
				                    <button class="btn btn-common btn-effect" id="submit_pwd" name="submitPwd" onclick="modify_pwd()">???????????? ??????</button>                    
				                  </div>
				                </div>
									</c:otherwise>
								</c:choose>
							</div>
							<!-- div class="row"end -->
						</div>
						<!-- div class="tab-pane fade show active" end  -->
						<!-- myinfo End -->

						<!-- subinfo Start -->
						<div class="tab-pane fade" id="nav-subinfo" role="tabpanel"
							aria-labelledby="nav-profile-tab">
							<div class="row">
								<c:choose>
									<c:when test="${userInfo.zipCode == null}">
										<div class="container">
											<div class="row">
												<div class="col-md-12">
												
													<!--matching image div-->
													<div class="p-3 py-5" style="margin-top: 100px;">
														<div class="mt-5 text-center">
															<img src="/resources/img/portfolio/nosub.png" alt="" />
														</div>
														<div class="mt-5 text-center">
															<p>
																<br />
															</p>
															<h2 class="section-title" style="font-size: 20px;">????????????
																binFree ???????????? ????????????.</h2>
														</div>
													</div>
												</div>
											</div>
										</div>
									</c:when>
									<c:otherwise>
										<div class="col-md-7 border-right" id="subinfo">
											<!--border-right-->
											<div class="p-3 py-5">
												<div
													class="d-flex justify-content-between align-items-center mb-3">
													<h6 class="text-right">?????? ??????</h6>
												</div>
												<div class="row mt-2">
													<div class="col-md-8">
														<label class="labels">?????? ??????</label> <input type="text"
															class="form-control" value="${userInfo.subItem }" id="subItem"
															disabled />
													</div>
													<div class="col-md-6">
														<label class="labels">?????? ??????</label> <input type="text"
															class="form-control" value="${userInfo.subStart}"
															readonly="true" />
													</div>
													<div class="col-md-6">
														<label class="labels">?????? ??????</label> <input type="text"
															class="form-control" value="${userInfo.subEnd }"
															readonly="true" />
													</div>
													<div class="col-md-6">
														<label class="labels">?????????</label><input id="sub_name"
															type="text" class="form-control"
															value="${userInfo.subName }" />
													</div>
													<div class="col-md-6">
														<label class="labels">????????? ?????????</label><input id="sub_phone"
															type="text" class="form-control"
															value="${userInfo.subPhone }" />
													</div>
												</div>
												<br> <br>
												<div
													class="d-flex justify-content-between align-items-center mb-3">
													<h6 class="text-right">?????? ??????</h6>
												</div>
												<div class="row mt-2">
													<div class="col-md-6">
														<label class="labels">????????????</label><input type="text"
															class="form-control" id="zipCode"
															value="${userInfo.zipCode }" readonly="true" />
													</div>
													<div class="col-md-6">
														<button class="btn btn-common btn-effect btn-loc"
															onclick="findAddress()" id="submit"
															style="margin-top: 29px;">?????? ??????</button>
													</div>
													<div class="col-md-12">
														<label class="labels">?????? ??????</label><input type="text"
															class="form-control" id="loc" value="${userInfo.loc }"
															readonly="true" />
													</div>
													<div class="col-md-12">
														<label class="labels">?????? ??????</label><input type="text"
															class="form-control" id="inputLoc"
															value="${userInfo.inputLoc }" />
													</div>
												</div>
												<div class="mt-5 text-center">
													<button class="btn btn-common btn-effect" id="sub_submit"
														onclick="modify_subInfo()">?????? ?????? ??????</button>
													&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
													<button type="button" class="btn btn-common"
														data-toggle="modal" data-target="#form">?????? ?????? ??????</button>
												</div>
											</div>
											<%-- </form:form> --%>
										</div>

										<div class="modal fade" id="form" tabindex="-1" role="dialog"
											aria-labelledby="exampleModalLabel" aria-hidden="true">
											<div class="modal-dialog modal-dialog-centered"
												role="document">
												<div class="modal-content">
													<div class="text-right cross">
														<i class="fa fa-times mr-2" data-dismiss="modal"></i>
													</div>
													<div class="card-body text-center">
														<img src="/resources/img/good.jpg" height="100"
															width="100">
														<div class="comment-box text-center">
															<p style="font-size: 25px; padding: 20px;">????????????
																???????????????????</p>
															<!-- ?????? ?????? ??? action -->
																<input type="hidden" id="star" />
																<div class="rating">
																	<input type="radio" name="star" value="5" id="5">
																	<label for="5">???</label> 
																	<input type="radio" name="star" value="4" id="4"> 
																	<label for="4">???</label> 
																	<input type="radio" name="star" value="3" id="3"> 
																	<label for="3">???</label>
																	<input type="radio" name="star" value="2" id="2"> 
																	<label for="2">???</label> 
																	<input type="radio" name="star" value="1" id="1"> 
																	<label for="1">???</label>
																</div>
																<div class="comment-area">
																<textarea class="form-control" id="contents" ame="contents" placeholder="????????? ??????????????????." rows="4"></textarea>
																</div>
																<div class="text-center mt-4">
																	<button name="subBtn" type="submit" class="btn btn-success send px-4" onclick="insert();">
																		?????? ?????? 
																		<i class="fa fa-long-arrow-right ml-1"></i>
																	</button>
																	<button name="subBtn" type="button" class="btn btn-success send px-4" data-dismiss="modal">
																		?????? 
																		<i class="fa fa-long-arrow-right ml-1"></i>
																	</button>
																</div>
														</div>
													</div>
												</div>
											</div>
										</div>

										<!-- mybuddyinfo Start -->
                              <div class="col-md-4">
                                 <div class="p-3 py-5">
                                    <div
                                       class="d-flex justify-content-between align-items-center mb-3">
                                       <h6 class="text-right">?????? Buddy</h6>
                                    </div>
                                    <div class="d-flex flex-row mt-3 exp-container">
                                       <img src="/resources/img/buddy/<c:out value="${myBuddyInfo.pic }" />" width="350" height="460">
                                    </div>
                                    <div class="d-flex flex-row mt-3 exp-container">
                                       <div class="work-experience ml-1">
                                          <span class="font-weight-bold" style="font-size: larger;"><c:out value="${myBuddyInfo.id }"></c:out>
                                          <c:out value="${myBuddyInfo.name }"></c:out></span><span>Buddy</span><span
                                             class="d-block text-black-50 labels"><c:out value="${myBuddyInfo.phone }"/></span>
                                          <!-- <span class="d-block text-black-50 labels">March,2017 -   May 2020</span> -->
                                       </div>
                                    </div>
                                    <hr>
                                 </div>
                              </div>
                           <!-- mybuddyinfo End -->
									</c:otherwise>
								</c:choose>
							</div>
							<!-- div class="row" end  -->
						</div>
						<!-- div class="tab-pane fade" end -->
						<!-- subinfo End -->
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- Mypage Section End -->


	<!-- Footer Section Start -->
	<%@ include file="/WEB-INF/views/includes/footer.jsp"%>
	
	<script type="text/javascript">
	/* ?????? ?????? */
	function insert() {
		$('input[name="star"]').each(function() {
	        if($(this).prop('checked')) {
	            $('#star').val(this.value);
	        }
	    });
	
		var token = $("meta[name='_csrf']").attr("content");
		var header = $("meta[name='_csrf_header']").attr("content");
		
		var email = $('#email').val();
		var star = $('#star').val();
		var contents = $('#contents').val();
		var userName = $('#name').val();
		var subItem = $('#subItem').val();
		console.log(contents);
		$.ajax({
			url: "/review/insert",
			method:"post",
			beforeSend : function(xhr)
	        {   /*???????????? ???????????? ?????? ????????? csrf?????? ????????????*/
				xhr.setRequestHeader(header, token);
	        },
			data: {'email': email, 'star' : star, 'contents' : contents, 'userName':userName, 'subItem':subItem},
			dataType: 'text',
			success: function(data){
				alert("?????? ????????? ?????????????????????!");
				$('#modal').modal('hide');
				window.location.href='/review/list';
			}
		});
	}
	
	$(document).ready(function() {
			console.log(${list});
		});
		$('.starRev span').click(function() {
			$(this).parent().children('span').removeClass('on');
			$(this).addClass('on').prevAll('span').addClass('on');
			$('#star').val(this.value);
			return false;
		});
		 $('#modal').modal("hide");
		    
	</script>
</body>

</html>