<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../sign_in/style.css">
<style type="text/css">
h3 
{
	font-family: sans-serif;
	color: #636e72;
	word-spacing: 1px;
}
</style>
</head>
<body>
	<section>
	<div class="container">
		<div class="login-form">
			<c:if test="${not empty sessionScope.liveid != null}">
				<h3>${sessionScope.id }님의 일기가 등록되었습니다.</h3>
			</c:if>
			<c:if test="${empty sessionScope.liveid == null }">
				<h3>일기가 작성되지 않았습니다.</h3>
			</c:if>	
<a href="${pageContext.request.contextPath }/confirm/confirm.jsp">Confirm to my diary</a><hr>
<a href="${pageContext.request.contextPath }/in/loginComplete.jsp">HOME</a> 
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