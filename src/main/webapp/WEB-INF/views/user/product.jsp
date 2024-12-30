<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>  
<body>
	<div id="content-page" class="content-page">
            <div class="container-fluid">
               <div class="row">
                  <div class="col-sm-12">
                     <div class="iq-card iq-card-block iq-card-stretch iq-card-height">
                        <div class="iq-card-header d-flex justify-content-between align-items-center">
                           <h4 class="card-title mb-0">Thông tin</h4>
                        </div>
                        <div class="iq-card-body pb-0">
                           <div class="description-contens align-items-top row">
                              <div class="col-md-6">
                                 <div class="iq-card-transparent iq-card-block iq-card-stretch iq-card-height">
                                    <div class="iq-card-body p-0">
                                       <div class="row align-items-center">
                                          <div class="col-3">
                                             <ul id="description-slider-nav" class="list-inline p-0 m-0  d-flex align-items-center">
								
												<li>
                                                   <a href="javascript:void(0);">
                                                   <img src="<c:url value = "/assets/user/${ book.bookImg }"/>" class="img-fluid rounded w-100" alt="">
                                                   </a>
                                                </li>
                                                <li>
                                                   <a href="javascript:void(0);">
                                                   <img src="<c:url value = "/assets/user/${ book.bookImg }"/>" class="img-fluid rounded w-100" alt="">
                                                   </a>
                                                </li>
                                                <li>
                                                   <a href="javascript:void(0);">
                                                   <img src="<c:url value = "/assets/user/${ book.bookImg }"/>" class="img-fluid rounded w-100" alt="">
                                                   </a>
                                                </li>
                                                <li>
                                                   <a href="javascript:void(0);">
                                                   <img src="<c:url value = "/assets/user/${ book.bookImg }"/>" class="img-fluid rounded w-100" alt="">
                                                   </a>
                                                </li>
                                                <li>
                                                   <a href="javascript:void(0);">
                                                   <img src="<c:url value = "/assets/user/${ book.bookImg }"/>" class="img-fluid rounded w-100" alt="">
                                                   </a>
                                                </li>
                                                <li>
                                                   <a href="javascript:void(0);">
                                                   <img src="<c:url value = "/assets/user/${ book.bookImg }"/>" class="img-fluid rounded w-100" alt="">
                                                   </a>
                                                </li>
                                             </ul>
                                          </div>
                                          <div class="col-9">
                                             <ul id="description-slider" class="list-inline p-0 m-0  d-flex align-items-center">
                                                <li>
                                                   <a href="javascript:void(0);">
                                                   <img src="<c:url value = "/assets/user/${ book.bookImg }"/>" class="img-fluid w-100 rounded" alt="">
                                                   </a>
                                                </li>
                                                <li>
                                                   <a href="javascript:void(0);">
                                                   <img src="<c:url value = "/assets/user/${ book.bookImg }"/>" class="img-fluid w-100 rounded" alt="">
                                                   </a>
                                                </li>
                                                <li>
                                                   <a href="javascript:void(0);">
                                                   <img src="<c:url value = "/assets/user/${ book.bookImg }"/>" class="img-fluid w-100 rounded" alt="">
                                                   </a>
                                                </li>
                                                <li>
                                                   <a href="javascript:void(0);">
                                                   <img src="<c:url value = "/assets/user/${ book.bookImg }"/>" class="img-fluid w-100 rounded" alt="">
                                                   </a>
                                                </li>
                                                <li>
                                                   <a href="javascript:void(0);">
                                                   <img src="<c:url value = "/assets/user/${ book.bookImg }"/>" class="img-fluid w-100 rounded" alt="">
                                                   </a>
                                                </li>
                                                <li>
                                                   <a href="javascript:void(0);">
                                                   <img src="<c:url value = "/assets/user/${ book.bookImg }"/>" class="img-fluid w-100 rounded" alt="">
                                                   </a>
                                                </li>
                                             </ul>
                                          </div>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                              <div class="col-md-6">
                                 <div class="iq-card-transparent iq-card-block iq-card-stretch iq-card-height">
                                    <div class="iq-card-body p-0">
                                       <h3 class="mb-3">${ book.title }</h3>
                                       <div class="price d-flex align-items-center font-weight-500 mb-2">
                                          <span class="font-size-20 pr-2 old-price"><fmt:formatNumber value="${book.price}" type="number" groupingUsed="true" pattern="#,##0" /> ₫</span>
                                          <span class="font-size-24 text-dark"><fmt:formatNumber value="${book.price*9/10}" type="number" groupingUsed="true" pattern="#,##0" /> ₫</span>
                                       </div>
                                       <div class="mb-3 d-block">
                                          <span class="font-size-20 text-warning">
                                          <i class="fa fa-star mr-1"></i>
                                          <i class="fa fa-star mr-1"></i>
                                          <i class="fa fa-star mr-1"></i>
                                          <i class="fa fa-star mr-1"></i>
                                          <i class="fa fa-star"></i>
                                          </span>
                                       </div>
                                       <span class="text-dark mb-4 pb-4 iq-border-bottom d-block">${ book.description }</span>
                                       <div class="text-primary mb-4">Tác giả: <span class="text-body">HappyLive</span></div>
                                       <div class="mb-4 d-flex align-items-center">                                       
                                          <a href="javascript:void();" class="btn btn-primary view-more mr-2" onclick="addCart(${book.bookID});">Thêm vào giỏ hàng</a>
                                          
                                       </div>
                                       <div class="mb-3">
                                          <a href="#" class="text-body text-center"><span class="avatar-30 rounded-circle bg-primary d-inline-block mr-2"><i class="ri-heart-fill"></i></span><span>Thêm vào danh sách yêu thích</span></a>
                                       </div>
                                       <div class="iq-social d-flex align-items-center">
                                          <h5 class="mr-2">Chia sẻ:</h5>
                                          <ul class="list-inline d-flex p-0 mb-0 align-items-center">
                                             <li>
                                                <a href="#" class="avatar-40 rounded-circle bg-primary mr-2 facebook"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                                             </li>
                                             <li>
                                                <a href="#" class="avatar-40 rounded-circle bg-primary mr-2 twitter"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                                             </li>
                                             <li>
                                                <a href="#" class="avatar-40 rounded-circle bg-primary mr-2 youtube"><i class="fa fa-youtube-play" aria-hidden="true"></i></a>
                                             </li>
                                             <li >
                                                <a href="#" class="avatar-40 rounded-circle bg-primary pinterest"><i class="fa fa-pinterest-p" aria-hidden="true"></i></a>
                                             </li>
                                          </ul>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="col-lg-12">
                     <div class="iq-card iq-card-block iq-card-stretch iq-card-height">
                        <div class="iq-card-header d-flex justify-content-between align-items-center position-relative">
                           <div class="iq-header-title">
                              <h4 class="card-title mb-0">Sản phẩm tương tự</h4>
                           </div>
                           <div class="iq-card-header-toolbar d-flex align-items-center">
                              <a href="category.html" class="btn btn-sm btn-primary view-more">Xem thêm</a>
                           </div>
                        </div>
                        <div class="iq-card-body single-similar-contens">
                           <ul id="single-similar-slider" class="list-inline p-0 mb-0 row">
								<c:forEach var="item" items="${ fivebooks }" varStatus="loop">
									<li class="col-md-3">
										<div class="row align-items-center">
											<div class="col-5">
												<div class="position-relative image-overlap-shadow">
													<a href="javascript:void();"><img
														class="img-fluid rounded w-100"
														
														src="<c:url value = "/assets/user/${ item.bookImg }"/>"
														alt=""></a>
													<div class="view-book">
														<a href="${ item.bookID }" class="btn btn-sm btn-white">Xem
															thêm</a>
													</div>
												</div>
											</div>
											<div class="col-7 pl-0">
												<h6 class="mb-2">${ item.title }</h6>
												<p class="text-body">${ item.year }</p>
												<a href="${ item.bookID }" class="text-dark" tabindex="-1">Mua ngay<i
													class="ri-arrow-right-s-line"></i></a>
											</div>
										</div>
									</li>
								</c:forEach>

								
                              
                              
                              
                           </ul>
                        </div>
                     </div>
                  </div>
                  <div class="col-lg-12">
                     <div class="iq-card iq-card-block iq-card-stretch iq-card-height">
                        <div class="iq-card-header d-flex justify-content-between align-items-center position-relative mb-0 trendy-detail">
                           <div class="iq-header-title">
                              <h4 class="card-title mb-0">Thịnh hành</h4>
                           </div>
                           <div class="iq-card-header-toolbar d-flex align-items-center">
                              <a href="/BookStore/category/3" class="btn btn-sm btn-primary view-more">Xem thêm</a>
                           </div>
                        </div>
                        <div class="iq-card-body trendy-contens">
                           <ul id="trendy-slider" class="list-inline p-0 mb-0 row">
                           <c:forEach var="item" items="${ favorbooks }" varStatus="loop">
                              <li class="col-md-3">
                                 <div class="d-flex align-items-center">
                                    <div class="col-5 p-0 position-relative image-overlap-shadow">
                                       <a href="javascript:void();"><img class="img-fluid rounded w-100" src="<c:url value = "/assets/user/${ item.bookImg }"/>" alt=""></a>
                                       <div class="view-book">
                                          <a href="${ item.bookID }" class="btn btn-sm btn-white">Xem sách</a>
                                       </div>
                                    </div>
                                    <div class="col-7">
                                       <div class="mb-2">
                                          <h6 class="mb-1">${ item.title }</h6>
                                          <p class="font-size-13 line-height mb-1">${ item.year }</p>
                                          <div class="d-block">
                                             <span class="font-size-13 text-warning">
                                             <i class="fa fa-star"></i>
                                             <i class="fa fa-star"></i>
                                             <i class="fa fa-star"></i>
                                             <i class="fa fa-star"></i>
                                             <i class="fa fa-star"></i>
                                             </span>
                                          </div>
                                       </div>
                                       <div class="price d-flex align-items-center">
                                          <h6><b>${ item.price } ₫</b></h6>
                                       </div>
                                       <div class="iq-product-action">
                                          <a href="javascript:void();" onclick="addCart(${item.bookID});"><i class="ri-shopping-cart-2-fill text-primary"></i></a>
                                          <a href="javascript:void();" class="ml-2"><i class="ri-heart-fill text-danger"></i></a>
                                       </div>
                                    </div>
                                 </div>
                              </li>
                              </c:forEach>
                           </ul>
                        </div>
                     </div>
                  </div>
                  <div class="col-lg-12">
                     <div class="iq-card iq-card-block iq-card-stretch iq-card-height">
                        <div class="iq-card-header d-flex justify-content-between align-items-center position-relative mb-0 similar-detail">
                           <div class="iq-header-title">
                              <h4 class="card-title mb-0">Có thể bạn sẽ thích</h4>
                           </div>
                           <div class="iq-card-header-toolbar d-flex align-items-center">
                              <a href="/BookStore/category/3" class="btn btn-sm btn-primary view-more">Xem thêm</a>
                           </div>
                        </div>                         
                        <div class="iq-card-body similar-contens">
                           <ul id="similar-slider" class="list-inline p-0 mb-0 row">
                           <c:forEach var="item" items="${ interestbooks }" varStatus="loop">
                              <li class="col-md-3">
                                 <div class="d-flex align-items-center">
                                    <div class="col-5 p-0 position-relative image-overlap-shadow">
                                       <a href="javascript:void();"><img class="img-fluid rounded w-100" src="<c:url value = "/assets/user/${ item.bookImg }"/>" alt=""></a>
                                       <div class="view-book">
                                          <a href="/BookStore/details/${ item.bookID }" class="btn btn-sm btn-white">Xem sách</a>
                                       </div>
                                    </div>
                                    <div class="col-7">
                                       <div class="mb-2">
                                          <h6 class="mb-1">${ item.title }</h6>
                                          <p class="font-size-13 line-height mb-1">${ item.year }</p>
                                          <div class="d-block">
                                             <span class="font-size-13 text-warning">
                                             <i class="fa fa-star"></i>
                                             <i class="fa fa-star"></i>
                                             <i class="fa fa-star"></i>
                                             <i class="fa fa-star"></i>
                                             <i class="fa fa-star"></i>
                                             </span>
                                          </div>
                                       </div>
                                       <div class="price d-flex align-items-center">
                                          <h6><b>${ item.price } ₫</b></h6>
                                       </div>
                                       <div class="iq-product-action">
                                          <a href="javascript:void();" onclick="addCart(${item.bookID});"><i class="ri-shopping-cart-2-fill text-primary"></i></a>
                                          <a href="javascript:void();" class="ml-2"><i class="ri-heart-fill text-danger"></i></a>
                                       </div>
                                    </div>
                                 </div>
                              </li>
                              </c:forEach>
                           </ul>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      
</body>
