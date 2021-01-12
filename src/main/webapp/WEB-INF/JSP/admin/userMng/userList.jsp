<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@	taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@	taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원리스트</title>
</head>

<body>
	
	<ul>
		<li>아이디</li>
		<li>이름</li>
		<li>이메일</li>
		<li>성별</li>
		<li>가입일</li>
	</ul>
	<c:forEach items="${userList}" var="li">
	
	</c:forEach>
	<c:forEach items="${userList}" var="li" varStatus="status">
		<ul>
			<li>${li.uId }</li>
			<li>${li.uName }</li>
			<li>${li.uEmail}</li>
			<li>${li.uSex }</li>
			<li><fmt:formatDate value="${li.uJoinDate }" pattern="yyyy-MM-dd HH:mm:ss"/></li>
		</ul>
	</c:forEach>
</body>
</html>