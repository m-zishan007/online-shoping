<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<spring:url var="css" value="resources/css" />
<spring:url var="js" value="resources/js" />
<spring:url var="images" value="resources/images" />
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Online Shopping - ${title}</title>
<script type="text/javascript">
	window.menu = '${title}';
</script>
<!-- Bootstrap core CSS -->
<%-- <link href="${css}/bootstrap.min.css" rel="stylesheet"> --%>
<link href="${baseURL}${css}/bootstrap.min.css" rel="stylesheet">
<!-- Custom styles for this template -->
<link href="${baseURL}${css}/myapp.css" rel="stylesheet">

</head>

<body>
	<div class="wrapper">
		<!-- Navigation -->
		<%@include file="./shared/navbar.jsp"%>

		<!-- Page Content -->
		<!-- LOADING HOME CONTENT -->
		<div class="content">
			<c:if test="${userClickHome == true }">
				<%@include file="./home.jsp"%>
			</c:if>

			<!-- LOAD ONLY WNEN USER CLICKS ABOUT -->
			<c:if test="${userClickAbout == true }">
				<%@include file="./about.jsp"%>
			</c:if>

			<!-- LOAD ONLY WNEN USER CLICKS CONTACT -->
			<c:if test="${userClickContact == true }">
				<%@include file="./contact.jsp"%>
			</c:if>
			
			<!-- LOAD ONLY WNEN USER CLICKS CONTACT -->
			<c:if test="${userClickAllProducts == true  or userClickCategoryProducts == true}">
				<%@include file="./listProducts.jsp"%>
			</c:if>
		</div>
		<!-- /.container -->
		<!-- Footer -->
		<%@include file="./shared/footer.jsp"%>


		<!-- Bootstrap core JavaScript -->
		<script src="${baseURL}${js}/jquery.min.js"></script>
		<script src="${baseURL}${js}/bootstrap.bundle.min.js"></script>
		<!-- Self coded javascript -->
		<script src="${baseURL}${js}/myapp.js"></script>
	</div>
</body>

</html>
