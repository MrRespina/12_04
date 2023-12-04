<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="fruit.f">
		<table align="center" border="1">
			<tr>
				<td align="center">
					<button>테이블 보기!</button>
				</td>
			</tr>
			<c:if test="${r!=null }">
				<tr>
					<td>
						${r}
					</td>
				</tr>
			</c:if>
		</table>
	</form>
	<c:if test="${fruits!=null }">
		<table align="center" border="1"
		style="margin-top: 30px; border-radius: 3px;">
		<c:forEach var="f" items="${ fruits}">
			<tr>
				<td>과일명</td>
				<td>${f.f_name}</td>
			</tr>
			<tr>
				<td>가격</td>
				<td><fmt:formatNumber type="currency"  value="${f.f_price }" /></td>
			</tr>
			<tr>
				<td>원산지</td>
				<td>${f.f_location}</td>
			</tr>
			<tr>	
				<td colspan="2"></td>
			</tr>
		</c:forEach>
	</table>
	</c:if>
	
</body>
</html>