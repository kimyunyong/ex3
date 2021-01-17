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
	table tr td{
		padding: 5px 0;
	}
	table tr:hover {
		cursor:pointer;
		background: gray;
	}
	

</style>
</head>
<c:set value="currPath" var="/admin/userMng/userList/" />
<body>
	<table>
		<tr>
			<td>아이디</td>
			<td>이름</td>
			<td>이메일</td>
			<td>성별</td>
			<td>가입일</td>
		</tr>
		<c:forEach items="${userList}" var="li" varStatus="status">
		<tr onClick="location.href='/admin/userMng/userView/${li.uId}'">
			<td>${li.uId }</td>
			<td>${li.uName }</td>
			<td>${li.uEmail}</td>
			<td>${li.uSex }</td>
			<td><fmt:formatDate value="${li.uJoinDate }" pattern="yyyy-MM-dd HH:mm:ss"/></td>
		</tr>
		</c:forEach>
	</table>
	<div>
		<ul>
			<c:if test="${paginationInfo.currentPageNo > paginationInfo.pageSize}">
				<li><a href="${currPath}${paginationInfo.firstPageNoOnPageList - 1}">(</a></li>
			</c:if>
			
			<c:forEach var="i" begin="${paginationInfo.firstPageNoOnPageList}" end="${paginationInfo.lastPageNoOnPageList}">
				<c:choose>
					<c:when test="${i == paginationInfo.currentPageNo}">
						<li class="selected">${i}</li>
					</c:when>
					<c:otherwise>
						<li><a href="${currPath}${i}">${i}</a></li>
					</c:otherwise>
				</c:choose>
			</c:forEach>
			
			<c:if test="${paginationInfo.currentPageNo <=paginationInfo.pageSize}">
				<li><a href="${currPath}${paginationInfo.lastPageNoOnPageList + 1}">(</a></li>
			</c:if>
		</ul>
		<input type="text" id="searchTxt" value=""/>
		<button onclick="goSearch();">검색</button>
	</div>
	
	<form id="searchForm" action="/admin/userMng/userList/${paginationInfo.currentPageNo}" method="get">
		<input type="hidden" id="searchWrd" name="searchWrd" value=""/>
	</form>
	
</body>
<script>
	function goSearch() {
		var form = $("form[id='searchForm']");
		var searchTxt = $("#searchTxt").val();
		var searchWrd = $("#searchWrd").val(searchTxt);
		
		console.log(searchTxt);
		
		/* form.submit();   */
	}
</script>
</html>