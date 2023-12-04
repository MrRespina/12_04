<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<meta charset="UTF-8">
<title>index.jsp</title>
<script type="text/javascript" src="resources/jQuery.js"></script>
<script type="text/javascript">
</script>
</head>
<body>
	<table align="center" border="1">
		<form action="error.go">
		<tr>
			<td align="center">테이블 보기</td>
		</tr>
		<tr>
			<td align="center"><button>정보 확인</button></td>
		</tr>
		<c:if test="${r!=null}">
			<tr>
				<td>${r}</td>
			</tr>
		</c:if>
		</form>
	</table>
	<c:if test="${r!=null }">
		<table id="errorTable" align="center" border="1"
			style="border: black dotted 3px; border-radius: 3px;margin-top:10px;">
			<c:forEach var="e" items="${ errors}">
				<tr>
					<td>에러</td>
					<td>${e.e_what}</td>
				</tr>
				<tr>
					<td>위치</td>
					<td>${e.e_where}</td>
				</tr>
				<tr>
					<td colspan="2"></td>
				</tr>
			</c:forEach>
		</table>
	</c:if>
</body>
</html>