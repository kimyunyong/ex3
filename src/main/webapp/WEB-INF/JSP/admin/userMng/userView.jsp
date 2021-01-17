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
<style>
	html, body, div, span, applet, object, iframe,
	h1, h2, h3, h4, h5, h6, p, blockquote, pre,
	a, abbr, acronym, address, big, cite, code,
	del, dfn, em, img, ins, kbd, q, s, samp,
	small, strike, strong, sub, sup, tt, var,
	b, u, i, center,
	dl, dt, dd, ol, ul, li,
	fieldset, form, label, legend,
	table, caption, tbody, tfoot, thead, tr, th, td,
	article, aside, canvas, details, embed, 
	figure, figcaption, footer, header, hgroup, 
	menu, nav, output, ruby, section, summary,
	time, mark, audio, video {
		margin: 0;
		padding: 0;
		border: 0;
		font-size: 100%;
		font: inherit;
		vertical-align: baseline;
	}
	
	article, aside, details, figcaption, figure, 
	footer, header, hgroup, menu, nav, section {
		display: block;
	}
	body {
		line-height: 1;
	}
	ol, ul {
		list-style: none;
	}
	blockquote, q {
		quotes: none;
	}
	blockquote:before, blockquote:after,
	q:before, q:after {
		content: '';
		content: none;
	}
	table {
		border-collapse: collapse;
		border-spacing: 0;
		text-align: center;
        width: 100%;
        font-size: 22px;
	}	

</style>
</head>

<body>
	<table>
		<tr>
			<td>아이디</td>
			<td>이름</td>
			<td>이메일</td>
			<td>성별</td>
			<td>가입일</td>
			<td>가입여부</td>			
		</tr>
		<tr>
			<td>${user.uId }</td>
			<td>${user.uName }</td>
			<td>${user.uEmail}</td>
			<td>
			<c:choose>
				<c:when test="${user.uSex eq '1'}">
					남자
				</c:when>
				<c:otherwise>
					여자
				</c:otherwise>
			</c:choose>
			</td>
			<td><fmt:formatDate value="${user.uJoinDate }" pattern="yyyy-MM-dd HH:mm:ss"/></td>
			<td>${user.uIsUse }</td>
		</tr>
	</table>
	<button onClick="location.href='/admin/userMng/userList'">취소</button>
	<button onClick="location.href='/admin/userMng/userUpdate/${user.uId}'">수정</button>
		<%-- <a href="/admin/userMng/userView/${user.uId}" role="button" class="btn1 clr_Wgray">수정</a> --%>
</body>
</html>