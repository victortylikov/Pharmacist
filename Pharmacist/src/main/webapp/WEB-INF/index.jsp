<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=windows-1251"
	pageEncoding="windows-1251"%>
<html>
<head>
<title>Welcome</title>
</head>
<body>
	<div class="container_18">
		<div class="main_div">
			<h1 id="reg">������������</h1>
			<p id="pre_p">����������, ��������� ����.</p>
			<div id="reg_form">
				<form:form action="addUserPost" modelAttribute="user" class="form">
					<p class="form_p">
						<label for="login">�����:</label>
						<form:input path="login" autocomplete="off" id="input_st"  />
					</p>
					<p class="form_p">
						<label for="password">������:</label>
						<form:password path="password" id="input_st" autocomplete="off" />

					</p>
					<p class="submit">
						<input type="submit" value="���������">
					</p>
				</form:form>
			</div>
		</div>
		<a href="/spring/" title="�����" id="left_button"><img
			id="image_left_button"
			src="<c:url value="/resources/images/arrowLeft.png" />" width="70"
			height="70"></a>
	</div>
</body>
</html>