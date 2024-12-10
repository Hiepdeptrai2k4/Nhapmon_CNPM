<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  

<!doctype html>
<html lang="en">
   <head>
      <!-- Required meta tags -->
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      <title>NHASACHTV - Nhà sách trực tuyến</title>
      <!-- Favicon -->
      <link rel="shortcut icon" href="<c:url value = "/assets/user/images/favicon.ico"/>" >
      <!-- Bootstrap CSS -->
      <link rel="stylesheet" href="<c:url value = "/assets/user/css/bootstrap.min.css"/>">
      <!-- Typography CSS -->
      <link rel="stylesheet" href="<c:url value = "/assets/user/css/typography.css"/>">
      <!-- Style CSS -->
      <link rel="stylesheet" href="<c:url value = "/assets/user/css/style.css"/>">
      <!-- Responsive CSS -->
      <link rel="stylesheet" href="<c:url value = "/assets/user/css/responsive.css"/>" >
   </head>
   <body>
      <!-- Wrapper Start -->
      <div class="wrapper">
      <%@include file="/WEB-INF/views/layouts/user/header.jsp" %>   
         <!-- TOP Nav Bar END -->
      </div>
      <decorator:body />	
      <!-- Wrapper END -->
      <!-- Footer -->
      <%@include file="/WEB-INF/views/layouts/user/footer.jsp" %>
      <!-- Footer END -->
      <!-- Optional JavaScript -->
      <!-- jQuery first, then Popper.js, then Bootstrap JS -->
      <script src="<c:url value = "/assets/user/js/jquery.min.js"/>"></script>
      <script src="<c:url value = "/assets/user/js/popper.min.js"/>"></script>
      <script src="<c:url value = "/assets/user/js/bootstrap.min.js"/>"></script>
      <!-- Appear JavaScript -->
      <script src="<c:url value = "/assets/user/js/jquery.appear.js"/>"></script>
      <!-- Countdown JavaScript -->
      <script src="<c:url value = "/assets/user/js/countdown.min.js"/>"></script>
      <!-- Counterup JavaScript -->
      <script src="<c:url value = "/assets/user/js/waypoints.min.js"/>"></script>
      <script src="<c:url value = "/assets/user/js/jquery.counterup.min.js"/>"></script>
      <!-- Wow JavaScript -->
      <script src="<c:url value = "/assets/user/js/wow.min.js"/>"></script>
      <!-- Apexcharts JavaScript -->
      <script src="<c:url value = "/assets/user/js/apexcharts.js"/>"></script>
      <!-- Slick JavaScript -->
      <script src="<c:url value = "/assets/user/js/slick.min.js"/>"></script>
      <!-- Select2 JavaScript -->
      <script src="<c:url value = "/assets/user/js/select2.min.js"/>"></script>
      <!-- Owl Carousel JavaScript -->
      <script src="<c:url value = "/assets/user/js/owl.carousel.min.js"/>"></script>
      <!-- Magnific Popup JavaScript -->
      <script src="<c:url value = "/assets/user/js/jquery.magnific-popup.min.js"/>"></script>
      <!-- Smooth Scrollbar JavaScript -->
      <script src="<c:url value = "/assets/user/js/smooth-scrollbar.js"/>"></script>
      <!-- lottie JavaScript -->
      <script src="<c:url value = "/assets/user/js/lottie.js"/>"></script>
      <!-- am core JavaScript -->
      <script src="<c:url value = "/assets/user/js/core.js"/>"></script>
      <!-- am charts JavaScript -->
      <script src="<c:url value = "/assets/user/js/charts.js"/>"></script>
      <!-- am animated JavaScript -->
      <script src="<c:url value = "/assets/user/js/animated.js"/>"></script>
      <!-- am kelly JavaScript -->
      <script src="<c:url value = "/assets/user/js/kelly.js"/>"></script>
      <!-- am maps JavaScript -->
      <script src="<c:url value = "/assets/user/js/maps.js"/>"></script>
      <!-- am worldLow JavaScript -->
      <script src="<c:url value = "/assets/user/js/worldLow.js"/>"></script>
      <!-- Raphael-min JavaScript -->
      <script src="<c:url value = "/assets/user/js/raphael-min.js"/>"></script>
      <!-- Morris JavaScript -->
      <script src="<c:url value = "/assets/user/js/morris.js"/>"></script>
      <!-- Morris min JavaScript -->
      <script src="<c:url value = "/assets/user/js/morris.min.js"/>"></script>
      <!-- Flatpicker Js -->
      <script src="<c:url value = "/assets/user/js/flatpickr.js"/>"></script>
      <!-- Style Customizer -->
      <script src="<c:url value = "/assets/user/js/style-customizer.js"/>"></script>
      <!-- Chart Custom JavaScript -->
      <script src="<c:url value = "/assets/user/js/chart-custom.js"/>"></script>
      <!-- Custom JavaScript -->
      <script src="<c:url value = "/assets/user/js/script.js"/>"></script> <!-- Liên kết đến tệp JavaScript -->
      <script src="<c:url value = "/assets/user/js/custom.js"/>"></script>
      
   </body>
</html>