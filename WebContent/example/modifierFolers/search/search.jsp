<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="model.Member"%>
<%@ page import="model.Comment"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/board/style.css" type="text/css"/>
<script>
function del(num){
location.href = 
	"${pageContext.request.contextPath }/DelBoardController?num="+num;
}

function delComment(comment_Num){
	location.href = 
		"${pageContext.request.contextPath }/CommentDelController?comment_Num="+comment_Num;
	}
</script>
</head>
<body>
<section>
	<div class="container">
		<div class="login-form">
	<c:set var="str">
		<c:if test="${sessionScope.id != b.writer }">
		</c:if>
	</c:set>
	
<form action="${pageContext.request.contextPath }/EditBoardController"
		method="post">
		
		
		
		<input type="hidden" value="${b.num }" name="num" size="45"
readonly>
					
			
				
		<input type="text" value="${b.writer }" name="writer"
					size="45" readonly>
			
			
				<h1>날짜</h1>
	<input type="text" value="${b.w_date }" size="45" readonly>
			
			
				<h1>제목</h1>
				<input type="text" name="title" value="${b.title }"
					size="45" ${str }>
			
			
			
<textarea name="content" rows="15" cols="45" ${str }>${b.content } </textarea>
				
			<input type="submit" value="수정">
			
			
			<input type="button1" value="삭제" onclick="del(${b.num})">
	
			<c:if test="${sessionScope.id == b.writer }">

			</c:if>
	</form>
			
		

	
	<!--  댓글 작성 -->
	

	    <form action="${pageContext.request.contextPath }/CommentInsertController?num=${b.num}" method="post">
		<input type="hidden" name="comment_ID" value="${sessionScope.id }" readonly><br />
		

			<textarea name="comment_Content" rows="5" cols="45">
			</textarea>
		
			<input type="hidden" name="comment_Bnum" value="${b.num}">
		
			<td colspan="2">
	        <input type="submit" value="댓글작성">
        </form>
	        
	        
<!-- 댓글 출력  -->
    

    <br>
	<c:if test="${not empty list }">
	<table border="1" cellspacing="0">
	<c:forEach var="c" items="${list }">
		<tr>
		<td id="td1">${c.comment_ID }</td>
						
		<td>${c.comment_Content }</td>
         <c:if test="${sessionScope.id == c.comment_ID }">
		<td>
         <input type="button2" value="댓글삭제" onclick="delComment(${c.comment_Num})">
		</td>
		
               </c:if>
					
				</tr>
			</c:forEach>
		</table>
	</c:if>
	<c:if test="${ empty list }">
		
	</c:if>
	

	     </div>
	     </div>
     </section>
	
	
</body>
</html>