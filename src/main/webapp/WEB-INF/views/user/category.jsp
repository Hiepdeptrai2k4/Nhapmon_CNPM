<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>  
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<body>
<!-- Page Content  -->
         <div id="content-page" class="content-page">
            <div class="container-fluid">
               <div class="row">
                  <div class="col-lg-12">
                     <div class="iq-card-transparent mb-0">
                        <div class="d-block text-center">
                           <h2 class="mb-3">Search by Book Name</h2>    
                           <div class="w-100 iq-search-filter">
                           
                           
                           		
                                 
                                 
                              <form:form action="/BookStore/search" method="POST" modelAttribute="searchInfo" class="list-inline p-0 m-0 row justify-content-center search-menu-options">
                                 
                                 <li class="search-menu-opt">
                                    <div class="iq-dropdown">
                                       <div class="form-group mb-0">
                                          	<form:select class="form-control form-search-control bg-white border-0" id="exampleFormControlSelect2" path="genres">
                                             <form:option value="" label="Genres" />
                                             <c:forEach var="item" items="${ genre }" varStatus="loop">
                                             <form:option value="${item.genreID}" label="${item.genreName}"/> 
                                             </c:forEach>
                                             
                                          </form:select>
                                       </div>
                                    </div>
                                 </li>
                                 
                                 <li class="search-menu-opt">
                                    <div class="iq-dropdown">
                                       <div class="form-group mb-0">
                                          <form:select class="form-control form-search-control bg-white border-0" id="exampleFormControlSelect4" path="author">
                                             <form:option value="" label="Author" />
                                             <c:forEach var="item" items="${ authors }" varStatus="loop">
                                             <form:option value="${item.authorID}" label="${item.authorName}"/> 
                                             </c:forEach>
                                             
                                          </form:select>
                                       </div>
                                    </div>
                                 </li>
                                 <li class="search-menu-opt">
                                    <div class="iq-search-bar search-book d-flex align-items-center">
                                       <div class="searchbox">
                                          <form:input type="text" class="text search-input" placeholder="search here..." path="bar"/>
                                          <a class="search-link" href="#"><i class="ri-search-line"></i></a>
                                       </div>
                                       <button type="submit" class="btn btn-primary search-data ml-2">Search</button>
                                    </div>
                                 </li>
                              </form:form>
                           </div> 
                        </div>
                     </div>
                     <div class="iq-card">
                        <div class="iq-card-body">
                           <div class="row">
								<c:if test="${empty listbook}">
									<h2>Không có kết quả phù hợp</h1>
								</c:if>
								<c:forEach var="item" items="${ listbook }" varStatus="loop">
									<div class="col-sm-6 col-md-4 col-lg-3">
										<div
											class="iq-card iq-card-block iq-card-stretch iq-card-height search-bookcontent">
											<div class="iq-card-body p-0">
												<div class="d-flex align-items-center">
													<div
														class="col-6 p-0 position-relative image-overlap-shadow">
														<a href="javascript:void();"><img
															class="img-fluid rounded w-100"
															src="<c:url value = "/assets/user/${ item.bookImg }"/>" alt=""></a>
														<div class="view-book">
															<a href="/BookStore/details/${ item.bookID }" class="btn btn-sm btn-white">View
																Book</a>
														</div>
													</div>
													<div class="col-6">
														<div class="mb-2">
															<h6 class="mb-1">${ item.title }</h6>
															<p class="font-size-13 line-height mb-1">${ item.year }</p>
															<div class="d-block">
																<span class="font-size-13 text-warning"> <i
																	class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																	class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																	class="fa fa-star"></i>
																</span>
															</div>
														</div>
														<div class="price d-flex align-items-center">
															<span class="pr-1 old-price"><fmt:formatNumber value="${item.price}" type="number" groupingUsed="true" pattern="#,##0" /></span>
															<div>
															<h6>
																<b><fmt:formatNumber value="${item.price*9/10}" type="number" groupingUsed="true" pattern="#,##0" /></b>
															</h6>
															</div>
														</div>
														<div class="iq-product-action">
															<a href="javascript:void();" onclick="addCart(${item.bookID});"><i
																class="ri-shopping-cart-2-fill text-primary"></i></a> <a
																href="javascript:void();" class="ml-2"><i
																class="ri-heart-fill text-danger"></i></a>
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
                  
                  <div class="col-lg-12">
                     <div class="iq-card iq-card-block iq-card-stretch iq-card-height">
                        <div class="iq-card-header d-flex justify-content-between align-items-center position-relative mb-0 trendy-detail">
                           <div class="iq-header-title">
                              <h4 class="card-title mb-0">Thịnh hành</h4>
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
                  <div class="col-lg-12">
                     <div class="iq-card iq-card-block iq-card-stretch iq-card-height">
                        <div class="iq-card-header d-flex justify-content-between align-items-center position-relative mb-0 similar-detail">
                           <div class="iq-header-title">
                              <h4 class="card-title mb-0">Có thể bạn sẽ thích</h4>
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