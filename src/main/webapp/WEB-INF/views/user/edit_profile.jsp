<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> 
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<body>
<div id="content-page" class="content-page">
         <div class="container-fluid">
            <div class="row">
               <div class="col-lg-12">
                  <div class="iq-card">
                     <div class="iq-card-body p-0">
                        <div class="iq-edit-list">
                           <ul class="iq-edit-profile d-flex nav nav-pills">
                              <li class="col-md-3 p-0">
                                 <a class="nav-link active" data-toggle="pill" href="#personal-information">
                                    Thông tin cá nhân
                                 </a>
                              </li>
                              <li class="col-md-3 p-0">
                                 <a class="nav-link" data-toggle="pill" href="#chang-pwd">
                                    Đổi mật khẩu
                                 </a>
                              </li>
                              
                              <li class="col-md-3 p-0">
                                 <a class="nav-link" data-toggle="pill" href="#manage-contact">
                                    Quản lý liên hệ
                                 </a>
                              </li>
                           </ul>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="col-lg-12">
                  <div class="iq-edit-list-data">
                     <div class="tab-content">
                        <div class="tab-pane fade active show" id="personal-information" role="tabpanel">
                           <div class="iq-card">
                              <div class="iq-card-header d-flex justify-content-between">
                                 <div class="iq-header-title">
                                    <h4 class="card-title">Thông tin cá nhân</h4>
                                 </div>
                              </div>
                              <div class="iq-card-body">
                              	
                                 <form:form action="edit" method="POST" modelAttribute="profileForm">
                                    <div class="form-group row align-items-center">
                                       <div class="col-md-12">
                                          <div class="profile-img-edit">
                                             <img class="profile-pic" src="images/user/1.jpg" alt="profile-pic">
                                             <div class="p-image">
                                                <i class="ri-pencil-line upload-button"></i>
                                                <input class="file-upload" type="file" accept="image/*"/>
                                             </div>
                                          </div>
                                       </div>
                                    </div>
                                    <div class=" row align-items-center">
                                       <div class="form-group col-sm-6">
                                          <label for="fname">Họ :</label>
                                          <form:input type="text" class="form-control" id="fname" value="${profile.firstName }" path="firstName" /> 
                                         
                                       </div>
                                       <div class="form-group col-sm-6">
                                          <label for="fname">Tên :</label>
                                          <form:input type="text" class="form-control" id="fname" value="${profile.lastName }" path="lastName" />
                                          
                                       </div>
                                       <div class="form-group col-sm-6">
                                          <label for="fname">Năm sinh:</label>
                                          <form:input type="number" class="form-control" id="fname" value="${profile.year }" path="year" />
                                          
                                       </div>
										<div class="form-group col-sm-6">
											
                                          <label for="fname">Tháng sinh:</label>
                                          <form:input type="number" class="form-control" id="fname" value="${profile.month }" path="month" />
                                          
                                       </div>
                                       <div class="form-group col-sm-6">
                                          <label for="fname">Ngày sinh:</label>
                                          <form:input type="number" class="form-control" id="fname" value="${profile.day }" path="day" />
                                          
                                       </div>
                                       
                                       
                                    </div>
                                    <button type="submit" class="btn btn-primary mr-2">Gửi</button>
                                    <button type="reset" class="btn iq-bg-danger">Hủy bỏ</button>
                                 </form:form>
                              </div>
                           </div>
                        </div>
                        <div class="tab-pane fade" id="chang-pwd" role="tabpanel">
                        	<h2> ${ statusChangePass }</h2>
                           <div class="iq-card">
                              <div class="iq-card-header d-flex justify-content-between">
                                 <div class="iq-header-title">
                                    <h4 class="card-title">Đổi mật khẩu</h4>
                                 </div>
                              </div>
                              <div class="iq-card-body">
                                 <form:form action="editpass" method="POST" modelAttribute="passEditForm">
                                    <div class="form-group">
                                       <label for="cpass">Mật khẩu hiện tại:</label>
                                       <a href="javascripe:void();" class="float-right">Quên mật khẩu</a>
                                       <form:input type="Password" class="form-control" id="cpass" value="" path="currPass"/>
                                    </div>
                                    <div class="form-group">
                                       <label for="npass">Mật khẩu mới:</label>
                                       <form:input type="Password" class="form-control" id="npass" value="" path="newPass"/>
                                    </div>
                                    <div class="form-group">
                                       <label for="vpass">Xác nhận lại mật khẩu:</label>
                                       <form:input type="Password" class="form-control" id="vpass" value="" path="newPass2"/>
                                    </div>
                                    <button type="submit" class="btn btn-primary mr-2">Gửi</button>
                                    <button type="reset" class="btn iq-bg-danger">Hủy bỏ</button>
                                 </form:form>
                              </div>
                           </div>
                        </div>
                        
                        <div class="tab-pane fade" id="manage-contact" role="tabpanel">
                        	<h2> ${ statusChangeU }</h2>
                           <div class="iq-card">
                              <div class="iq-card-header d-flex justify-content-between">
                                 <div class="iq-header-title">
                                    <h4 class="card-title">Quản lý liên hệ</h4>
                                 </div>
                              </div>
                              <div class="iq-card-body">
                                 <form:form action="edituser" method="POST" modelAttribute="userEditForm">
                                    <div class="form-group">
                                       <label for="cno">Số liên lạc:</label>
                                       <form:input type="text" class="form-control" id="cno" value="${LoginInfo.phone }" path="phone"/>
                                    </div>
                                    
                                    <div class="form-group">
                                       <label for="url">Địa chỉ:</label>
                                       <form:input type="text" class="form-control" id="cno" value="${LoginInfo.address }" path="address"/>
                                    </div>
                                    <button type="submit" class="btn btn-primary mr-2">Gửi</button>
                                    <button type="reset" class="btn iq-bg-danger">Hủy bỏ</button>
                                 </form:form>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
</body>
