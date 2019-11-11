<%@ page language = "java" contentType = "text/html; charset=ISO-8859-1" pageEncoding = "ISO-8859-1" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "form" uri = "http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<script 
			src = "https://code.jquery.com/jquery-3.3.1.slim.min.js" 
			integrity = "sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" 
			crossorigin = "anonymous"></script>
		<script 
			src = "https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" 
			integrity = "sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" 
			crossorigin = "anonymous"></script>
		<link 
			type="text/css" 
			rel="stylesheet" 
			href="${pageContext.request.contextPath}/resources/css/bootstrap.css" />
		<script src="${pageContext.request.contextPath}/resources/js/bootstrap.js"></script>
		<title>Contacte</title>
	</head>
	<body class = "container">
		<div class = "jumbotron d-flex align-items-center justify-content-around">
			<div>
				<c:set var = "nuevo" value = "${(contacto.id == 0)}" />
				<h1 class = "display-4">Agenda de contactes</h1>
				<p class = "lead text-right">amb Spring i Hibernate</p>
			</div>
			<img 
				src = "${pageContext.request.contextPath}/resources/img/contactos_512x270.png"
				alt = "Contactes" height = "200" />
		</div>
		<h2 class = "text-center">${nuevo ? "Nou" : "Editar"} contacte
		<c:if test="${nuevo == false}"> amb ID#<c:out value="${contacto.id}"></c:out>:</c:if>
		</h2>
		<form:form action = "guarda" modelAttribute = "contacto" method = "post" class = "form-group">
			<form:hidden path = "id" />
			<div class = "container border pt-3 pl-3 pr-3 mb-3">
				<div class = "form-group row">
					<label for = "nombre" class ="col-sm-2 col-form-label">Nom</label>
					<div class="col-sm-10">
						<form:input path = "nombre" class = "form-control"/>
					</div>
				</div>
				<div class = "form-group row">
					<label for = "email" class = "col-sm-2 col-form-label">Correu Electrònic</label>
					<div class = "col-sm-10">
						<form:input path = "email" class = "form-control" />
					</div>
				</div>
				<div class = "form-group row">
					<label for = "telefono" class = "col-sm-2 col-form-label">Telèfon</label>
					<div class = "col-sm-10">
						<form:input path = "telefono" class = "form-control" />
					</div>
				</div>	
			</div>
			<div class = "d-flex justify-content-end">
				<input type = "submit" value = "Guardar"  class = "btn btn-success mr-3" />
				<a  href = "${pageContext.request.contextPath}/contacto/lista"
					class = "btn btn-outline-primary">Llistat de contactes</a>
			</div>
		</form:form>
		<footer class = "mt-5">
			<p class = "lead small font-weight-lighter text-right">CIFO - Curs de desenvolupament Java, Novembre'19</p>
		</footer>
	</body>
</html>