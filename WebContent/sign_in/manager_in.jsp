<%@page import="sign.Service.signServiceImpl"%>
<%@page import="sign.Service.signService"%>
<%@page import="VO.SignVO"%>
<%@page import="com.sun.org.apache.xerces.internal.impl.xpath.regex.REUtil"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="style.css" type="text/css"/>
</head>
<body>
<section style="background: #16a085;">
	<div class="container" style="z-index: 6;">
		<div class="login-form">
				<h1>Manager in.</h1>
			<form  name="f" action="${pageContext.request.contextPath }/SigninController" method="post">
					<input type="text" name="id" placeholder="ID">
					<input type="password" name="pwd" placeholder="Password">  
					<input type="button" onclick="managerConfirm()" value="Login">
			</form>
			<a href="${pageContext.request.contextPath }/sign_up/sign_up_manager.jsp">Creating a Manager.</a><br>
			<a href="${pageContext.request.contextPath }/sign_in/forgetPassword.jsp">Forget Password.</a><hr>
			<a href="${pageContext.request.contextPath }/in/in.jsp">home.</a>
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
<script type="text/javascript">
function managerConfirm() {
	var managerMessage = confirm("관리자계정으로 로그인 하시겠습니까?");
	if(managerMessage) {
		<% 
		signService service = new signServiceImpl();
		//HttpSession sessionManager = request.getSession();
		boolean flag = false;
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		SignVO vo = service.getSignVO(id);
		
		
		if(vo!=null&&pwd.equals(vo.getPwd())) {
			int type = vo.getType();//입력받은 값이 아니라, 데이타베이스에서 가져오는 것이니까
			
			session.setAttribute("id", id);
			session.setAttribute("type", type);
			flag = true;
		}
		%>
		if(type == 3) {
			f.submit();
		} else {
			return false;
			alert("관리자 계정이 아닙니다.");
		}
	}
}
</script>
</section>
</body>
</html>