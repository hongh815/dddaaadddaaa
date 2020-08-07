<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="VO.SignVO"%>
<%@ page import="VO.CommentVO"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/comments/style.css" type="text/css"/>
<script>
function del(num){
location.href = 
	"${pageContext.request.contextPath }/DelBoardController?num="+num;
}

function delComment(comment_Num){
	location.href = 
		"${pageContext.request.contextPath }/CommentDelController?id=${livenum.id}&myid=${sessionScope.id}&comment_Num="+comment_Num;
	}
</script>
</head>
<body>
<section>
	<div class="container">
		<div class="login-form">
	<c:set var="str">
		<c:if test="${sessionScope.id != livenum.id }">
		</c:if>
	</c:set>
	
<form action="${pageContext.request.contextPath }/EditBoardController"
		method="post">
		
		
		
		<input type="hidden" value="${livenum.num }" name="num" size="45"
readonly>
					
			
				
		<input type="text" value="${livenum.id }" name="id"
					size="45" readonly>
			
			
				<h1>날짜</h1>
	<input type="text" value="${livenum.w_date }" size="45" readonly>
			
			
				<h1>제목</h1>
				<input type="text" name="title" value="${livenum.title }"
					size="45" ${str }>
			
			
			
<textarea name="content" rows="15" cols="45" ${str }>${livenum.content } </textarea>
				
			<input type="submit" value="수정">
			
			
			<input type="button1" value="삭제" onclick="del(${livenum.num})">
	
			<c:if test="${sessionScope.id == livenum.id }">

			</c:if>
	</form>
			
		

	
	<!--  댓글 작성 -->
	

	    <form action="${pageContext.request.contextPath }/CommentInsertController?num=${livenum.num}" method="post">
		<input type="hidden" name="comment_ID" value="${sessionScope.id }" readonly><br />
		

			<textarea name="comment_Content" rows="5" cols="45">
			</textarea>
		
			<input type="hidden" name="comment_Bnum" value="${livenum.num}">
		
	        <input type="submit" value="댓글작성">
        </form>
	        
	        
<!-- 댓글 출력  -->
    

    <br>
	<c:if test="${not empty commentlist }">
	<table border="1" cellspacing="0">
	<c:forEach var="c" items="${commentlist }">
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
	<c:if test="${ empty commentlist }">
		
	</c:if>
	

	     </div>
	     </div>
     </section>
</body>
</html>