<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>회원가입</title>
    <link rel="stylesheet" href="/WEB-INF/resources/css/skins/login.css">

</head>
<body>
<h1>회원가입</h1>
    <div class="container">
           <div class="row">
               <div class="col-lg-3 col-md-2"></div>
               <div class="col-lg-6 col-md-8 login-box">
                   <div class="col-lg-12 login-key">
                       <i class="fa fa-key" aria-hidden="true"></i>
                   </div>
                   <div class="col-lg-12 login-title">
                       ADMIN PANEL
                   </div>

                   <div class="col-lg-12 login-form">
                       <div class="col-lg-12 login-form">
                           <form>
                               <div class="form-group">
                                   <label class="form-control-label">USERNAME</label>
                                   <input type="text" class="form-control">
                               </div>
                               <div class="form-group">
                                   <label class="form-control-label">PASSWORD</label>
                                   <input type="password" class="form-control" i>
                               </div>

                               <div class="col-lg-12 loginbttm">
                                   <div class="col-lg-6 login-btm login-text">
                                       <!-- Error Message -->
                                   </div>
                                   <div class="col-lg-6 login-btm login-button">
                                       <button type="submit" class="btn btn-outline-primary">LOGIN</button>
                                   </div>
                               </div>
                           </form>
                       </div>
                   </div>
                   <div class="col-lg-3 col-md-2"></div>
               </div>
           </div>

</body>
</html>