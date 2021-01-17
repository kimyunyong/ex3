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

<script
  src="https://code.jquery.com/jquery-3.5.1.js"
  integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
  crossorigin="anonymous"></script>

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
<!-- $('#form_web').submit(); -->
<body>
	<form name="form" id="form_web" method="post" enctype="multipart/form-data">
		<input type="hidden" name="uId" value="${user.uId }" />
		<input type="date" name="uJoinDate" value="<fmt:formatDate value="${user.uJoinDate }" pattern="yyyy-MM-dd HH:mm:ss"/>" />
		<table>
			<tr>
				<td>아이디</td>
				<td>${user.uId }</td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input type="text" value="${user.uName }" name="uName"/></td>
			</tr>
			<tr>
				<td>이메일</td>
				<td><input type="text" value="${user.uEmail}" name="uEmail"/></td>
			</tr>
			<tr>
				<td>성별</td>
				<td>
					남<input type="radio" name="uSex" value="1" <c:if test='${user.uSex.equals("1")}'>checked="checked"</c:if> />
					여<input type="radio" name="uSex" value="0" <c:if test='${user.uSex.equals("0")}'>checked="checked"</c:if> />
				</td>
			</tr>
			<tr>
				<td>가입일</td>
				<td><fmt:formatDate value="${user.uJoinDate }" pattern="yyyy-MM-dd HH:mm:ss"/></td>
			</tr>
			<tr>
				<td>탈퇴</td>
				<td></td>
			</tr>
		</table>
	</form>
	<button onClick="location.href='/admin/userMng/userList'">취소</button>
	<button id="updateBtn">수정</button>
	<button id="updateSimpleAjaxBtn">simpleAjax수정</button>
	
		<%-- <a href="/admin/userMng/userView/${user.uId}" role="button" class="btn1 clr_Wgray">수정</a> --%>
</body>

<script>
$(document).ready(function(){
	// 일반적인 submit form
 	$('#updateBtn').on('click',function(){
		$("#form_web").find("input[name=uName]").val("홍길동");
		$("#form_web").attr("action", "/admin/userMng/updateUserProc");
		$('#form_web').submit();
	});
	
	$('#updateSimpleAjaxBtn').on('click',function(){
		var params = $("form[name=form]").serialize(); // serialize() : 입력된 모든Element(을)를 문자열의 데이터에 serialize 한다.
	    /* var params = $("#form_web").serialize(); // serialize() : 입력된 모든Element(을)를 문자열의 데이터에 serialize 한다. */
	    $.ajax({
	        url: '/admin/userMng/updateUserProc/simpleAjax',
	        type: 'POST',
	        data: params,
	        contentType: 'application/x-www-form-urlencoded; charset=UTF-8', 
	        dataType: 'json',
	        success: function (data) {
	        	console.log(data.user.uName);
	        }
	    });
	});
	
	
	
	
});
</script>
</html>