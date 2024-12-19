<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<html lang="en">
  
   <body>
         <p><c:out value="${sessionScope.status}"/></p>
         <!-- TOP Nav Bar END -->
         <!-- Page Content  -->
         <div id="content-page" class="content-page">
            <div class="container-fluid">
               <div class="row">
                  <div class="col-sm-12">
                     <div class="iq-card">
                        <div class="iq-card-header d-flex justify-content-between">
                           <div class="iq-header-title">
                              <h4 class="card-title">Danh sách sách</h4>
                           </div>
                           <div class="iq-card-header-toolbar d-flex align-items-center">
                              <a href='<c:url value = "/admin/them-sach" />' class="btn btn-primary">Thêm sách</a>
                           </div>
                        </div>
                        <div class="iq-card-body">
                           <div class="table-responsive">
                              <table class="data-tables table table-striped table-bordered" style="width:100%">
                                <thead>
                                    <tr>
                                        <th style="width: 3%;">STT</th>
                                        <th style="width: 12%;">Hình ảnh</th>
                                        <th style="width: 15%;">Tên sách</th>
                                        <th style="width: 15%;">Thể loại sách</th>
                                        <th style="width: 15%;">Tác giả sách</th>
                                        <th style="width: 18%;">Mô tả sách</th>
                                        <th style="width: 7%;">Giá</th>
                                        <th style="width: 7%;">Sách PDF</th>
                                        <th style="width: 15%;">Hoạt động</th>
                                    </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="item" items="${bigBook}">
						  <tr>
                                        <td>${ item.bookID }</td>
                                        <td><img class="img-fluid rounded" src="<c:url value = "/assets/user/${ item.bookImg }"/>" alt=""></td>
                                        <td>${ item.title }</td>
                                        <td>${ item.genreName }</td>
                                        <td>${ item.authorName }</td>
                                        <td>
                                          <p class="mb-0">${ item.description }</p>
                                        </td>
                                        <td>${ item.price }</td>
                                        <td><a href="book-pdf.html"><i class="ri-file-fill text-secondary font-size-18"></i></a></td>                                        
                                        <td>
                                           <div class="flex align-items-center list-user-action">
                                             <a class="bg-primary" data-toggle="tooltip" data-placement="top" title="" data-original-title="Edit" href='<c:url value = "/admin/sua-sach/${ item.bookID }" />'><i class="ri-pencil-line"></i></a>
                                             <a class="bg-primary" data-toggle="tooltip" data-placement="top" title="" data-original-title="Xoá" href='<c:url value = "/admin/xoa-sach/${ item.bookID }" />'><i class="ri-delete-bin-line"></i></a>
                                          </div>
                                        </td>
                                    </tr>
					</c:forEach>
                                
                                  
                                    
                                   
                                </tbody>
                            </table>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <!-- Wrapper END -->
      <!-- Footer -->
      <footer class="iq-footer">
         <div class="container-fluid">
            <div class="row">
               <div class="col-lg-6">
                  <ul class="list-inline mb-0">
                     <li class="list-inline-item"><a href="privacy-policy.html">Chính sách bảo mật</a></li>
                     <li class="list-inline-item"><a href="terms-of-service.html">Điều khoản sử dụng</a></li>
                  </ul>
               </div>
            </div>
         </div>
      </footer>
      <!-- Footer END -->
      <!-- color-customizer -->
      <!-- color-customizer END -->
      <!-- Optional JavaScript -->
      <!-- jQuery first, then Popper.js, then Bootstrap JS -->
      <script src="js/jquery.min.js"></script>
      <script src="js/popper.min.js"></script>
      <script src="js/bootstrap.min.js"></script>
      <script src="js/jquery.dataTables.min.js"></script>
      <script src="js/dataTables.bootstrap4.min.js"></script>
      <!-- Appear JavaScript -->
      <script src="js/jquery.appear.js"></script>
      <!-- Countdown JavaScript -->
      <script src="js/countdown.min.js"></script>
      <!-- Counterup JavaScript -->
      <script src="js/waypoints.min.js"></script>
      <script src="js/jquery.counterup.min.js"></script>
      <!-- Wow JavaScript -->
      <script src="js/wow.min.js"></script>
      <!-- Apexcharts JavaScript -->
      <script src="js/apexcharts.js"></script>
      <!-- Slick JavaScript -->
      <script src="js/slick.min.js"></script>
      <!-- Select2 JavaScript -->
      <script src="js/select2.min.js"></script>
      <!-- Owl Carousel JavaScript -->
      <script src="js/owl.carousel.min.js"></script>
      <!-- Magnific Popup JavaScript -->
      <script src="js/jquery.magnific-popup.min.js"></script>
      <!-- Smooth Scrollbar JavaScript -->
      <script src="js/smooth-scrollbar.js"></script>
      <!-- lottie JavaScript -->
      <script src="js/lottie.js"></script>
      <!-- am core JavaScript -->
      <script src="js/core.js"></script>
      <!-- am charts JavaScript -->
      <script src="js/charts.js"></script>
      <!-- am animated JavaScript -->
      <script src="js/animated.js"></script>
      <!-- am kelly JavaScript -->
      <script src="js/kelly.js"></script>
      <!-- am maps JavaScript -->
      <script src="js/maps.js"></script>
      <!-- am worldLow JavaScript -->
      <script src="js/worldLow.js"></script>
      <!-- Raphael-min JavaScript -->
      <script src="js/raphael-min.js"></script>
      <!-- Morris JavaScript -->
      <script src="js/morris.js"></script>
      <!-- Morris min JavaScript -->
      <script src="js/morris.min.js"></script>
      <!-- Flatpicker Js -->
      <script src="js/flatpickr.js"></script>
      <!-- Style Customizer -->
      <script src="js/style-customizer.js"></script>
      <!-- Chart Custom JavaScript -->
      <script src="js/chart-custom.js"></script>
      <!-- Custom JavaScript -->
      <script src="js/custom.js"></script>
   </body>
</html>