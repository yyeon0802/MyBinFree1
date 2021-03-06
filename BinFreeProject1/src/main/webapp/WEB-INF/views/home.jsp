<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
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
  <!-- css -->
  <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
  <link rel="stylesheet" href="/resources/css/line-icons.css">
  <link rel="stylesheet" href="/resources/css/owl.carousel.css">
  <link rel="stylesheet" href="/resources/css/owl.theme.css">
  <link rel="stylesheet" href="/resources/css/nivo-lightbox.css">
  <link rel="stylesheet" href="/resources/css/magnific-popup.css">
  <link rel="stylesheet" href="/resources/css/animate.css">
  <link rel="stylesheet" href="/resources/css/menu_sideslide.css">
  <link rel="stylesheet" href="/resources/css/main.css">
  <link rel="stylesheet" href="/resources/css/responsive.css">

  <script src="https://code.jquery.com/jquery-latest.js"></script>
  <script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
  <script>
  </script>

</head>

<body>
    <!-- Header Section Start -->
  <%@ include file="/WEB-INF/views/includes/header.jsp" %>

    <!-- Main Carousel Section -->
    <div id="carousel-area" style="max-width:100%; height: auto;">
      <div class="carousel-inner" role="listbox">
        <div class="carousel-item active">
          <img src="/resources/img/slider/Recycling_Bin_GIF_Header.gif" width="150%" height="700px" style="padding-top: 60px;" alt="">
          <div class="carousel-caption text-left">
            <h3 class="wow fadeInRight" data-wow-delay="0.2s">
              </h1>
              <h2 class="wow fadeInRight" data-wow-delay="0.4s">????????????,<br/> ???????????????</h2>
              <h4 class="wow fadeInRight" data-wow-delay="0.6s">????????? ????????? ??????????????? ????????? ?????? ??? ?????????.</h4>
              <a href="/subscribe/main" class="btn btn-lg btn-common btn-effect wow fadeInRight"
                data-wow-delay="0.9s">????????????</a>
              <a href="/form/register" class="btn btn-lg btn-border wow fadeInRight" data-wow-delay="1.2s">?????? ????????????</a>
          </div>
        </div>
      </div>
    </div>

  </header>
  <!-- Header Section End -->

  <!-- Services Section Start -->
  <section id="services" class="section">
    <div class="container">
      <div class="item-boxes">
        <div class="row">
          <div class="col-md-6">
            <img src="/resources/img/main/earth1.jpg" style="max-width:100%; height: auto;">
          </div>
          <div class="col-md">
          </div>
          <div class="col-md-4">
            <br><br>
            <h4 style="font-size: 500%; font-family: ????????????; font-weight: bold;">For Earth</h4>
            <br><br>
            <p style="font-size:180%; line-height: 30px; color: gray;"> "????????? ???????????????"</p>
            <p style="font-size:180%; line-height: 50px; color: gray;">???????????? ????????? ?????? ????????? ???!</p><br><br><br>
            <h4 style="font-size:180%; line-height: 10px;">#?????????</h4>
            <p style="font-size:120%; line-height: 30px;">????????? ??????????????? ??????????????? ??? ??? ????????? ??????!<br>?????? ????????? ??????????????? ????????????.</p>
          </div>
          <div class="col-md">
          </div>
        </div>
      </div>
      <div class="item-boxes">
        <div class="row">
          <div class="col-md">
          </div>
          <div class="col-md-4">
            <br><br><br>
            <h4 style="font-size: 500%; font-family: ????????????; font-weight: bold;">For Local</h4>
            <p style="font-size:180%; line-height: 30px; color:gray;">"?????? ????????? ???????????????"</p><br><br><br>
            <h4 style="font-size:180%; line-height: 10px;">#?????????</h4>
            <p style="font-size:110%; line-height: 30px;">?????????19 ????????? ??????????????? ????????? ???????????????????<br> ????????? ????????? ????????? ????????? ?????????.</p>
          </div>
          <div class="col-md">
          </div>
          <div class="col-md-6">
            <img src="/resources/img/main/senior.jpeg" style="max-width:100%; height:auto;">
          </div>
        </div>
      </div>
      <div class="item-boxes">
        <div class="row">
          <div class="col-md-6">
            <img src="/resources/img/main/4.jpeg" style="max-width:100%; height:auto;">
          </div>
          <div class="col-md">
          </div>
          <div class="col-md-4">
            <br><br><br>
            <h4 style="font-size: 500%; font-family: ????????????; font-weight: bold;">For Life</h4>
            <p style="font-size: 180%;line-height: 30px; color:gray;">"????????? ???????????? ???????????????"</p><br><br><br>
            <h4 style="font-size: 180%;">#???????????? #????????????</h4>
            <p style="font-size: 120%; line-height: 30px;">????????? ?????????????????? ???????????? ????????? ?????? ?????????. ???????????? ????????? ?????? ????????? ???!</p>
          </div>
          <div class="col-md">
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- Services Section End -->

  <!-- Start Video promo Section -->
  <section class="video-promo section">
    <div class="overlay"></div>
    <div class="container">
      <div class="row">
        <div class="col-md-12 col-sm-12">
          <div class="video-promo-content text-center">
            <a href="https://www.youtube.com/embed/rU5nV_jmZlg" class="video-popup"><i class="lni-film-play"></i></a>
            <h2 class="wow zoomIn" data-wow-duration="1000ms" data-wow-delay="100ms">B free??? ?????? ???????????? ??????!</h2>
            <p class="wow zoomIn" data-wow-duration="1000ms" data-wow-delay="100ms">??? ????????? ????????? ????????? ?????????.</p>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- End Video Promo Section -->

  <!-- Counter Section Start -->
  <div class="counters section bg-defult">
    <div class="container">
      <div class="row">
        <div class="col-sm-6 col-md-6 col-lg-3">
          <div class="facts-item">
            <div class="icon">
              <i class="lni-users"></i>
            </div>
            <div class="fact-count">
              <h3><span class="sum"><c:out value="${userTotal }" /></span>???</h3>
              <h4>?????? ?????? ?????????</h4>
            </div>
          </div>
        </div>
        <div class="col-sm-6 col-md-6 col-lg-3">
          <div class="facts-item">
            <div class="icon">
              <i class="lni-write"></i>
            </div>
            <div class="fact-count">
              <h3><span class="counter"><c:out value="${pageMaker.total }" /></span></h3>
              <h4>?????? ????????? ?????????</h4>
            </div>
          </div>
        </div>
        <div class="col-sm-6 col-md-6 col-lg-3">
          <div class="facts-item">
            <div class="icon">
              <i class="lni-emoji-smile"></i>
            </div>
            <div class="fact-count">
              <h3><span class="counter"><c:out value="${buddyTotal }" /></span>???</h3>
              <h4>???????????? ?????? ?????????</h4>
            </div>
          </div>
        </div>
        <div class="col-sm-6 col-md-6 col-lg-3">
          <div class="facts-item">
            <div class="icon">
              <i class="lni-heart"></i>
            </div>
            <div class="fact-count">
              <h3><span class="counter"><c:out value="${starSum * 20 }" /></span>%</h3>
              <h4>?????? ?????????</h4>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- Counter Section End -->

  <!-- Testimonial Section Start -->
  <section class="testimonial section">
    <div style="text-align: center; margin-bottom: 40px;">
      <h2 style="font-family: Malgun Gothic ;">B-Family ??????</h2>
    </div>
    <div class="container">
      <div class="row">
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
          <div id="testimonials" class="touch-slider owl-carousel">
            <c:forEach items='${list}' var="list">
            <div class="item">
              <div class="testimonial-item">
                <div class="author">
                  <div class="author-info">
                    <h2><c:out value="${list.userName }"></c:out></h2>
                    <c:forEach var="i" begin="1" end="${list.star }">
                    <span><i class="lni-star-filled"></i></span>
                    </c:forEach>
                  </div>
                </div>
                <div class="content-inner">
                  <p class="description"><c:out value="${list.contents }"></c:out></p>
                </div>
              </div>
            </div>
            </c:forEach>
         
    </div>
  </section>
  <!-- Testimonial Section End -->

	<!-- PC ???????????? ?????? ?????? -->
	<%@ include file="/WEB-INF/views/includes/kakaochat.jsp"%>


  <!-- Footer Section Start -->
  <%@ include file="/WEB-INF/views/includes/footer.jsp"%>

</body>

</html>