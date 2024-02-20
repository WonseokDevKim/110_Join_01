<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>CodePen - Flat HTML5/CSS3 Login Form</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
  <script type="text/javascript">
  	// 컨트롤러로부터 받은 메시지 alert
  	window.onload = function(e) {
  		var resultMsg = '${resultMsg}';
  		if(resultMsg.length > 0) {
  			alert(resultMsg);
  		}
  	}
  </script>
</head>
<body>
<!-- partial:index.partial.html -->
<div class="login-page">
  <div class="form">
    <form class="register-form" action="<c:url value='/join.do'/>" method="post">
      <input type="text" name="memberId" placeholder="id" required/>
      <input type="password" name="passwd" placeholder="password" required/>
      <input type="password" placeholder="confirm password" required/>
      <input type="text" name="email" placeholder="email address" required/>
      <input type="text" name="memberName" placeholder="name" required/>
      <input type="text" name="nickname" placeholder="nickname" required/>
      <button type="submit">create</button>
      <p class="message">Already registered? <a href="#">Sign In</a></p>
    </form>
    <form class="login-form">
      <input type="text" name="memberId" placeholder="id"/>
      <input type="password" name="passwd" placeholder="password"/>
      <button>login</button>
      <p class="message">Not registered? <a href="#">Create an account</a></p>
    </form>
  </div>
</div>
<!-- partial -->
<script src='//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script  src="${pageContext.request.contextPath}/resources/js/script.js"></script>

</body>
</html>