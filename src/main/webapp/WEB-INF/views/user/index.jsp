<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>  
<body>
	
	<!-- Page Content  -->
         <div id="content-page" class="content-page">
            <div class="container-fluid">
            	
				
                  <div class="col-lg-12">
                     <div class="iq-card-transparent iq-card-block iq-card-stretch iq-card-height rounded">
                        <div class="newrealease-contens">
                           <ul id="newrealease-slider" class="list-inline p-0 m-0 d-flex align-items-center">
								<c:forEach var="item" items="${ _12books }" begin="1" end="6" >
									<li class="item">
										<a href="javascript:void(0);"> 
										<img src="<c:url value = "/assets/user/${ item.bookImg }"/>" class="img-fluid w-100 rounded" alt="">
									</a>
									</li> 
								</c:forEach>
								<c:forEach var="item" items="${ _12books }" begin="1" end="6" >
									<li class="item">
										<a href="javascript:void(0);"> 
										<img src="<c:url value = "/assets/user/${ item.bookImg }"/>" class="img-fluid w-100 rounded" alt="">
									</a>
									</li> 
								</c:forEach>
							</ul>
                        </div>
                     </div>
                  </div>
                  <div class="col-lg-12">
                     <div class="iq-card iq-card-block iq-card-stretch iq-card-height">
                        <div class="iq-card-header d-flex justify-content-between align-items-center position-relative">
                           <div class="iq-header-title">
                              <h4 class="card-title mb-0">Gợi ý cho bạn</h4>
                           </div>
                           <div class="iq-card-header-toolbar d-flex align-items-center">                              
                              <a href="category/3" class="btn btn-sm btn-primary view-more">Xem Thêm</a>
                           </div>
                        </div> 
                        <div class="iq-card-body">  
                           <div class="row">
                              <c:forEach var="item" items="${ _12books }">
									<div class="col-sm-6 col-md-4 col-lg-3">
                                 <div class="iq-card iq-card-block iq-card-stretch iq-card-height browse-bookcontent">
                                    <div class="iq-card-body p-0">
                                       <div class="d-flex align-items-center">
                                          <div class="col-6 p-0 position-relative image-overlap-shadow">
                                             <a href="javascript:void();"><img class="img-fluid rounded w-100" src="<c:url value = "/assets/user/${ item.bookImg }"/>" alt=""></a>
                                             <div class="view-book">
                                                <a href="details/${ item.bookID }" class="btn btn-sm btn-white">Mua Ngay</a>
                                             </div>
                                          </div>
                                          <div class="col-6">
                                             <div class="mb-2">
                                                <h6 class="mb-1">${ item.title }</h6>
                                                <p class="font-size-13 line-height mb-1">${ item.year }</p>
                                                <div class="d-block line-height">
                                                   <span class="font-size-11 text-warning">
                                                      <i class="fa fa-star"></i>
                                                      <i class="fa fa-star"></i>
                                                      <i class="fa fa-star"></i>
                                                      <i class="fa fa-star"></i>
                                                      <i class="fa fa-star"></i>
                                                   </span>                                             
                                                </div>
                                             </div>
                                             <div class="price d-flex align-items-center">
                                             
                                                <h6><b><fmt:formatNumber value="${item.price}" type="number" groupingUsed="true" pattern="#,##0" /> đ</b></h6>
                                             </div>
                                             <div class="iq-product-action">
                                                <a href="javascript:void();" onclick="addCart(${item.bookID});"><i class="ri-shopping-cart-2-fill text-primary"></i></a>
                                                <a href="javascript:void();" class="ml-2"><i class="ri-heart-fill text-danger"></i></a>
                                             </div>                                      
                                          </div>
                                       </div>
                                    </div>
                                 </div>
                              </div>
								</c:forEach>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="col-lg-6">
                     <div class="iq-card iq-card-block iq-card-stretch iq-card-height">
                        <div class="iq-card-header d-flex justify-content-between mb-0">
                           <div class="iq-header-title">
                              <h4 class="card-title">Best Seller</h4>
                           </div>
                           <div class="iq-card-header-toolbar d-flex align-items-center">
                              <div class="dropdown">
                                 <span class="dropdown-toggle p-0 text-body" id="dropdownMenuButton2" data-toggle="dropdown">
                                 Trong ngày<i class="ri-arrow-down-s-fill"></i>
                                 </span>
                                 <div class="dropdown-menu dropdown-menu-right shadow-none" aria-labelledby="dropdownMenuButton2">
                                    <a class="dropdown-item" href="#">Ngày</a>
                                    <a class="dropdown-item" href="#">Tuần</a>
                                    <a class="dropdown-item" href="#">Tháng</a>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class="iq-card-body">
                           <div class="row align-items-center">
                              <div class="col-sm-5 pr-0">
                                 <a href="javascript:void();"><img class="img-fluid rounded w-100" src="<c:url value = "/assets/user/images/new_realeases/img01.jpg"/>" alt=""></a>
                              </div>
                              <div class="col-sm-7 mt-3 mt-sm-0">
                                 <h4 class="mb-2">Payback Time </br> Ngày Đòi Nợ</h4>
                                 <p class="mb-2">Tác Giả : Phill Town</p>
                                 <div class="mb-2 d-block">
                                    <span class="font-size-12 text-warning">
                                       <i class="fa fa-star"></i>
                                       <i class="fa fa-star"></i>
                                       <i class="fa fa-star"></i>
                                       <i class="fa fa-star"></i>
                                       <i class="fa fa-star"></i>
                                    </span>
                                 </div>
                                 <span class="text-dark mb-3 d-block">NGÀY ĐÒI NỢ – Payback Time 
                                 “Một cuộc sống hạnh phúc được bắt đầu từ những quyết định đầu tư khôn ngoan”</span>
                                 <a href="details/1" class="btn btn-sm btn-primary view-more">Xem Thêm</a>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="col-lg-6">
                     <div class="iq-card iq-card-block iq-card-stretch iq-card-height">
                        <div class="iq-card-header d-flex justify-content-between mb-0">
                           <div class="iq-header-title">
                              <h4 class="card-title">Nhà Sách TV</h4>
                           </div>
                           <div class="iq-card-header-toolbar d-flex align-items-center">
                              <div class="dropdown">
                                 <span class="dropdown-toggle p-0 text-body" id="dropdownMenuButton3" data-toggle="dropdown">
                                 Ngày<i class="ri-arrow-down-s-fill"></i>
                                 </span>
                                 <div class="dropdown-menu dropdown-menu-right shadow-none" aria-labelledby="dropdownMenuButton3">
                                    <a class="dropdown-item" href="#">Tuần</a>
                                    <a class="dropdown-item" href="#">Theo Tháng</a>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class="iq-card-body">
                           <ul class="list-inline row mb-0 align-items-center iq-scrollable-block">
                              <li class="col-sm-6 d-flex mb-3 align-items-center">
                                 <div class="icon iq-icon-box mr-3">
                                    <a href="javascript:void();"><img class="img-fluid avatar-60 rounded-circle" src="<c:url value = "/assets/user/images/user/1.jpg"/>" alt=""></a>
                                 </div>
                                 <div class="mt-1">
                                    <h6>Kinh Tế</h6>
                                    <p class="mb-0 text-primary">Publish Books: <span class="text-body">2831</span></p>
                                 </div>
                              </li>
                              <li class="col-sm-6 d-flex mb-3 align-items-center">
                                 <div class="icon iq-icon-box mr-3">
                                    <a href="javascript:void();"><img class="img-fluid avatar-60 rounded-circle" src="<c:url value = "/assets/user/images/user/1.jpg"/>" alt=""></a>
                                 </div>
                                 <div class="mt-1">
                                    <h6>Văn Học</h6>
                                    <p class="mb-0 text-primary">Publish Books: <span class="text-body">432</span></p>
                                 </div>
                              </li>
                              <li class="col-sm-6 d-flex mb-3 align-items-center">
                                 <div class="icon iq-icon-box mr-3">
                                    <a href="javascript:void();"><img class="img-fluid avatar-60 rounded-circle" src="<c:url value = "/assets/user/images/user/1.jpg"/>" alt=""></a>
                                 </div>
                                 <div class="mt-1">
                                    <h6>Tâm Lý - Kĩ Năng Sống</h6>
                                    <p class="mb-0 text-primary">Publish Books: <span class="text-body">5471</span></p>
                                 </div>
                              </li>
                              <li class="col-sm-6 d-flex mb-3 align-items-center">
                                 <div class="icon iq-icon-box mr-3">
                                    <a href="javascript:void();"><img class="img-fluid avatar-60 rounded-circle" src="<c:url value = "/assets/user/images/user/1.jpg"/>" alt=""></a>
                                 </div>
                                 <div class="mt-1">
                                    <h6>Sách Giáo Khoa</h6>
                                    <p class="mb-0 text-primary">Publish Books: <span class="text-body">8764</span></p>
                                 </div>
                              </li>
                              <li class="col-sm-6 d-flex mb-3 align-items-center">
                                 <div class="icon iq-icon-box mr-3">
                                    <a href="javascript:void();"><img class="img-fluid avatar-60 rounded-circle" src="<c:url value = "/assets/user/images/user/1.jpg"/>" alt=""></a>
                                 </div>
                                 <div class="mt-1">
                                    <h6>Chính trị – pháp luật</h6>
                                    <p class="mb-0 text-primary">Publish Books: <span class="text-body">8987</span></p>
                                 </div>
                              </li>
                              <li class="col-sm-6 d-flex mb-3 align-items-center">
                                 <div class="icon iq-icon-box mr-3">
                                    <a href="javascript:void();"><img class="img-fluid avatar-60 rounded-circle" src="<c:url value = "/assets/user/images/user/1.jpg"/>" alt=""></a>
                                 </div>
                                 <div class="mt-1">
                                    <h6>Khoa Học - Công Nghệ </h6>
                                    <p class="mb-0 text-primary">Publish Books: <span class="text-body">2831</span></p>
                                 </div>
                              </li>


                           </ul>
                        </div>
                     </div>
                  </div>
                  
               </div>
            </div>
         <script>
        
    	</script>
</body>
