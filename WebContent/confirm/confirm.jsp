<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../sign_in/style.css">
</head>
<body>
<jsp:include page="../example/mainmenu/mainmenu.jsp"/>
<section style="background: #2980b9;">
	<div class="container">
		<div class="login-form">
				<h1>사용자 검색</h3>
			<form action="${pageContext.request.contextPath }/ListController">
				<input type="text" name="id" placeholder="이름">
				<input type="hidden" name="myid" value="${sessionScope.id }">
				<input type="submit" value="찾기">
			</form>
			<hr><a href="${pageContext.request.contextPath }/in/in.jsp">home.</a>
		</div>
	</div>
		<div class="clouds">
		<img src="${pageContext.request.contextPath }/img/cloud/cloud1.png" style="--i:1;">
		<img src="${pageContext.request.contextPath }/img/cloud/cloud2.png" style="--i:2;">
		<img src="${pageContext.request.contextPath }/img/cloud/cloud3.png" style="--i:3;">
		<img src="${pageContext.request.contextPath }/img/cloud/cloud4.png" style="--i:4;">
		<img src="${pageContext.request.contextPath }/img/cloud/cloud5.png" style="--i:5;">
		<img src="${pageContext.request.contextPath }/img/cloud/cloud1.png" style="--i:10;">
		<img src="${pageContext.request.contextPath }/img/cloud/cloud2.png" style="--i:9;">
		<img src="${pageContext.request.contextPath }/img/cloud/cloud3.png" style="--i:8;">
		<img src="${pageContext.request.contextPath }/img/cloud/cloud4.png" style="--i:7;">
		<img src="${pageContext.request.contextPath }/img/cloud/cloud5.png" style="--i:6;">
		<img src="${pageContext.request.contextPath }/img/cloud/cloud4.png" style="--i:12;">
		<img src="${pageContext.request.contextPath }/img/cloud/cloud5.png" style="--i:11;">	
		<img src="${pageContext.request.contextPath }/img/cloud/cloud2.png" style="--i:13;">
		<img src="${pageContext.request.contextPath }/img/cloud/cloud3.png" style="--i:14;">
		<img src="${pageContext.request.contextPath }/img/cloud/cloud2.png" style="--i:16;">
		<img src="${pageContext.request.contextPath }/img/cloud/cloud3.png" style="--i:15;">
	</div>	
</section>
<p style="margin: 25px 20px;">우리는 사람입니다.</p>
</body>
</html>