<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

관리자페이지입니다.
<a href ="${pageContext.request.contextPath }/mante/supermemberInfo.jsp">회원정보강제수정</a>
<a href ="${pageContext.request.contextPath }/mante/loginForm.jsp">글 블라인드</a> <- 버릴까?
<a href = "${pageContext.request.contextPath }/log/log.txt"> 로그확인 </a>


</body>
</html>