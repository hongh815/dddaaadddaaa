<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<section>
	<div class="container">
		<div class="login-form">
				<h1>Sign_up.</h1>
			<form action="${pageContext.request.contextPath }/SignupController" method="post">
				<input type="text" placeholder="your id." name="id">
				<input type="text" placeholder="your password." name="pwd">
				<input type="text" placeholder="your nickname." name="name">
				<input type="hidden" name="type" value="3">
				<input type="submit" value="submit">
			</form>
			<hr><a href="${pageContext.request.contextPath }/in/in.jsp">home.</a>
		</div>
	</div>
		<div class="clouds">
		<img src="${pageContext.request.contextPath }/img/cloud/cloud1.png" style="--i:1;">
		<img src="${pageContext.request.contextPath }/img/cloud/cloud2.png" style="--i:2;">
		<img src="${pageContext.request.contextPath }/img/cloud/cloud3.png" style="--i:4;">
		<img src="${pageContext.request.contextPath }/img/cloud/cloud4.png" style="--i:3;">
		<img src="${pageContext.request.contextPath }/img/cloud/cloud5.png" style="--i:5;">
		<img src="${pageContext.request.contextPath }/img/cloud/cloud1.png" style="--i:10;">
		<img src="${pageContext.request.contextPath }/img/cloud/cloud2.png" style="--i:9;">
		<img src="${pageContext.request.contextPath }/img/cloud/cloud3.png" style="--i:8;">
		<img src="${pageContext.request.contextPath }/img/cloud/cloud4.png" style="--i:7;">
		<img src="${pageContext.request.contextPath }/img/cloud/cloud5.png" style="--i:6;">	
	</div>
	
</section>
</body>
</html>