<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=windows-1251"
	pageEncoding="windows-1251"%>
<html>
<head>
<link href="<c:url value="/resources/css/style.css" />"
	rel="stylesheet">
<title>Welcome</title>
</head>
<body>
	<div class="container">
		<div class="main_div">
			<h3>Данные для входа</h3>
			<a href="/spring/addNewClient">Добавить нового клиента</a>

		</div>
	</div>
</body>
</html>
