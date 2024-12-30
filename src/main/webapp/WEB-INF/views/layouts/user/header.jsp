<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>  
<!-- Sidebar  -->
         <div class="iq-sidebar">
            <div class="iq-sidebar-logo d-flex justify-content-between">
               <a href="/BookStore/" class="header-logo">
                  <img src="<c:url value = "/assets/user/images/logo.png" /> " class="img-fluid rounded-normal" alt="">
                  <div class="logo-title">
                     <span class="text-primary text-uppercase">NHASACHTV </span>
                  </div>
               </a>
            </div>
            <div id="sidebar-scrollbar">
               <nav class="iq-sidebar-menu">
                  <ul id="iq-sidebar-toggle" class="iq-menu">
                     <li class="active active-menu">
                        <a href="#dashboard" class="iq-waves-effect" data-toggle="collapse" aria-expanded="true"><span class="ripple rippleEffect"></span><i class="las la-home iq-arrow-left"></i><span>Shop</span><i class="ri-arrow-right-s-line iq-arrow-right"></i></a>
                        <ul id="dashboard" class="iq-submenu collapse show" data-parent="#iq-sidebar-toggle">
                           <li><a href="/BookStore"><i class="las la-house-damage"></i>Home Page</a></li>
                           <li class="active"><a href="/BookStore/category/3"><i class="ri-function-line"></i>Category Page</a></li>
                        </ul>
                     </li>
                     
                     <c:if test="${ not empty LoginInfo }">
                     <li>
                        <a href="#userinfo" class="iq-waves-effect" data-toggle="collapse" aria-expanded="false"><span class="ripple rippleEffect"></span><i class="las la-user-tie iq-arrow-left"></i><span>User</span><i class="ri-arrow-right-s-line iq-arrow-right"></i></a>
                        <ul id="userinfo" class="iq-submenu collapse" data-parent="#iq-sidebar-toggle" style="">
                           <li><a href="/BookStore/profile"><i class="las la-id-card-alt"></i>User Profile</a></li>
                           <li><a href="/BookStore/profile/edit"><i class="las la-edit"></i>User Edit</a></li>
                           
                        </ul>
                     </li>
                     </c:if>
                     
                     
                  </ul>
               </nav>
               
            </div>
            
         </div>
         <!-- TOP Nav Bar -->
         <div class="iq-top-navbar">
            <div class="iq-navbar-custom">
               <nav class="navbar navbar-expand-lg navbar-light p-0">
                  <div class="iq-menu-bt d-flex align-items-center">
                     <div class="wrapper-menu">
                        <div class="main-circle"><i class="las la-bars"></i></div>
                     </div>
                     <div class="iq-navbar-logo d-flex justify-content-between">
                        <a href="index.html" class="header-logo">
                           <img src="<c:url value = "/assets/user/images/logo.png"/> " class="img-fluid rounded-normal" alt="">
                           <div class="logo-title">
                              <span class="text-primary text-uppercase">img01</span>
                           </div>
                        </a>
                     </div>
                  </div>
                  <div class="navbar-breadcrumb">
                     <h5 class="mb-0">Trang Chủ</h5>
                  </div>
                  
                  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"  aria-label="Toggle navigation">
                  <i class="ri-menu-3-line"></i>
                  </button>
                  <div class="collapse navbar-collapse" id="navbarSupportedContent">
                     <ul class="navbar-nav ml-auto navbar-list">
                        <li class="nav-item nav-icon search-content">
                           <a href="#" class="search-toggle iq-waves-effect text-gray rounded">
                              <i class="ri-search-line"></i>
                           </a>
                           <form action="#" class="search-box p-0">
                              <input type="text" class="text search-input" placeholder="Type here to search...">
                              <a class="search-link" href="#"><i class="ri-search-line"></i></a>
                           </form>
                        </li>
                        <li class="nav-item nav-icon">
                           <a href="#" class="search-toggle iq-waves-effect text-gray rounded">
                           <i class="ri-notification-2-line"></i>
                           <span class="bg-primary dots"></span>
                           </a>
                           <div class="iq-sub-dropdown">
                              <div class="iq-card shadow-none m-0">
                                 <div class="iq-card-body p-0">
                                    <div class="bg-primary p-3">
                                       <h5 class="mb-0 text-white">Thông Báo<small class="badge  badge-light float-right pt-1">${ bill.size() }</small></h5>
                                    </div>
                                    <c:forEach var="item" items="${bill}">
                                    <a href="/BookStore/bill/${item.billID }" class="iq-sub-card" >
                                       <div class="media align-items-center">
                                          <div class="">
                                             <img class="avatar-40 rounded" src="<c:url value = "/assets/user/images/user/1.jpg"/>" alt="">
                                          </div>
                                          <div class="media-body ml-3">
                                          	<c:if test="${item.state == 1}">
                                             <h6 class="mb-0 ">Đơn hàng chờ xác nhận</h6>
                                            </c:if>
                                            <c:if test="${item.state == 2}">
                                             <h6 class="mb-0 ">Đơn hàng đang giao</h6>
                                            </c:if>
                                            <c:if test="${item.state == 3}">
                                             <h6 class="mb-0 ">Đơn hàng giao thành công</h6>
                                            </c:if>
                                             <small class="float-right font-size-12">${ item.time }</small>
                                             <p class="mb-0"><fmt:formatNumber value="${ item.total }" type="number" groupingUsed="true" pattern="#,##0" /> ₫</p>
                                          </div>
                                       </div>
                                    </a>
                                    </c:forEach>
                                 </div>
                              </div>
                           </div>
                        </li>
                        
                        <li class="nav-item nav-icon dropdown">
                           <a href="#" class="search-toggle iq-waves-effect text-gray rounded">
                           <i class="ri-shopping-cart-2-line"></i>
                           <span class="badge badge-danger count-cart rounded-circle" id="cartSize1">${cart.size()}</span>
                           </a>
                           <div class="iq-sub-dropdown">
                              <div class="iq-card shadow-none m-0">
                                 <div class="iq-card-body p-0 toggle-cart-info" id='cartContent' style="max-height: 500px; overflow-y: auto;">
                                    <div class="bg-primary p-3">
                                       <h5 class="mb-0 text-white">Giỏ Hàng<small class="badge  badge-light float-right pt-1" id="cartSize2">${cart.size()}</small></h5>
                                    </div>
                                    <c:forEach var="entry" items="${cart}">
                                    <c:if test="${cart.size() > 0}">
    									<a href="#" class="iq-sub-card" >
                                       <div class="media align-items-center">
                                          <div class="">
                                             <img class="rounded" src="<c:url value = "/assets/user/${ entry.value.book.bookImg }"/>" alt="">
                                          </div>
                                          <div class="media-body ml-3">
                                             <h6 class="mb-0 ">${ entry.value.book.title }</h6>
                                             <p class="mb-0"><fmt:formatNumber value="${ entry.value.book.price }" type="number" groupingUsed="true" pattern="#,##0" /> đ</p>
                                          </div>
                                          <div class="float-right font-size-24 text-danger" onclick="deleteCart(${entry.value.book.bookID},event)"><i class="ri-close-fill"></i></div>
                                       </div>
                                    </a>
									</c:if>
                                    
                                    </c:forEach>
                                    
                                 </div>
                                 <div class="d-flex align-items-center text-center p-3">
                                       
                                       <a class="btn btn-primary iq-sign-btn" href="/BookStore/checkout" role="button">Thanh Toán</a>
                                    </div>
                              </div>
                           </div>
                        </li>
                        <li class="line-height pt-3">
                           <a href="#" class="search-toggle iq-waves-effect d-flex align-items-center">
                           	<c:if test="${ not empty LoginInfo }">
                              <img src="<c:url value = "/assets/user/images/user/1.jpg"/> " class="img-fluid rounded-circle mr-3" alt="user">
                              <div class="caption">
                              <c:if test="${ empty LoginInfo }">
                                 <h6 class="mb-1 line-height">Khách</h6>
                                </c:if>
                                <c:if test="${ not empty LoginInfo }">
                                 <h6 class="mb-1 line-height">${ LoginInfo.username }</h6>
                                </c:if>
                                 <p class="mb-0 text-primary">Tài Khoản</p>
                              </div>
                             </c:if>
                             <c:if test="${ empty LoginInfo }">
                              <img src="<c:url value = "/assets/user/images/user/1.jpg"/> " class="img-fluid rounded-circle mr-3" alt="user">
                              <div class="caption">
                                 <h6 class="mb-1 line-height">Khách</h6>
                                 <p class="mb-0 text-primary">Tài Khoản</p>
                              </div>
                             </c:if>
                           </a>
                           <div class="iq-sub-dropdown iq-user-dropdown">
                              <div class="iq-card shadow-none m-0">
                              	<c:if test="${ empty LoginInfo }">
                              		<div class="iq-card-body p-0 ">
                                 
                                    <div class="bg-primary p-3">
                                       <h5 class="mb-0 text-white line-height">Xin Chào Khách</h5>
                                    </div>
                                    
                                    <div class="d-inline-block w-100 text-center p-3">
                                       <a class="bg-primary iq-sign-btn" href="/BookStore/authen/login" role="button">Đăng nhập<i class="ri-login-box-line ml-2"></i></a>
                                    </div>
                                 </div>
                              	</c:if>
                              	<c:if test="${ not empty LoginInfo }">
                              			<div class="iq-card-body p-0 ">
                                 
                                    <div class="bg-primary p-3">
                                       <h5 class="mb-0 text-white line-height">Xin Chào ${ LoginInfo.username }</h5>
                                    </div>
                                    <a href="/BookStore/profile" class="iq-sub-card iq-bg-primary-hover">
                                       <div class="media align-items-center">
                                          <div class="rounded iq-card-icon iq-bg-primary">
                                             <i class="ri-file-user-line"></i>
                                          </div>
                                          <div class="media-body ml-3">
                                             <h6 class="mb-0 ">Trang cá nhân</h6>
                                          </div>
                                       </div>
                                    </a>
                                    <a href="/BookStore/profile/edit" class="iq-sub-card iq-bg-primary-hover">
                                       <div class="media align-items-center">
                                          <div class="rounded iq-card-icon iq-bg-primary">
                                             <i class="ri-profile-line"></i>
                                          </div>
                                          <div class="media-body ml-3">
                                             <h6 class="mb-0 ">Sổ địa chỉ</h6>
                                          </div>
                                       </div>
                                    </a>
                                    
                                    <div class="d-inline-block w-100 text-center p-3">
                                       <a class="bg-primary iq-sign-btn" href="/BookStore/authen/logout" role="button">Đăng xuất<i class="ri-login-box-line ml-2"></i></a>
                                    </div>
                                 </div>
                              	</c:if>
                                 
                              </div>
                           </div>
                        </li>
                     </ul>
                  </div>
               </nav>
            </div>
         </div>