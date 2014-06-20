<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=windows-1251"
	pageEncoding="windows-1251"%>
<html>
<head>
<link href="<c:url value="/resources/css/style.css" />"
	rel="stylesheet">
	<link href="<c:url value="/resources/css/reset.css" />"
	rel="stylesheet">
<title>Welcome</title>
</head>
<body>
	<div class="container">
		<div class="main_div">
			<h1 id="reg">Registration</h1>
			<!-- <p id="pre_p">Please, fill fields.</p> -->
			<div id="reg_form">
				<form:form action="addClientPost" modelAttribute="client"
					class="form">

					<p class="form_p">
						<label class="field_name" for="firstName">First Name:</label>
						<form:input path="firstName" autocomplete="off" class="field" />
					</p>

					<p class="form_p">
						<label class="field_name" for="lastName">Last Name:</label>
						<form:input path="lastName" class="field" autocomplete="off" />
					</p>

					<p class="form_p">
						<label class="field_name" for="dateOfBirth">Date of Birth:</label>
						<form:input path="dateOfBirth" autocomplete="off" class="field" />
					</p>

					<p class="form_p">
						<label class="field_name" for="address">Address:</label>
						<form:input path="address" autocomplete="off" class="field" />
					</p>

					<p class="form_p">
						<label class="field_name" for="email">E-mail:</label>
						<form:input path="email" autocomplete="off" class="field" />
					</p>
					<p class="submit">
						<input type="submit" value="Отправить">
					</p>
				</form:form>
			</div>
		</div>
	</div>
</body>
</html>
