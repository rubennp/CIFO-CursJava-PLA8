<%@ page language = "java" contentType = "text/html; charset=ISO-8859-1" pageEncoding = "ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

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
		<title>Contactes</title>
	</head>
	<body class = "container">
		<div class = "jumbotron d-flex align-items-center justify-content-around">
			<div>
				<h1 class = "display-4">Agenda de contactes</h1>
				<p class = "lead text-right">amb Spring i Hibernate</p>
			</div>
			<img 
				src = "${pageContext.request.contextPath}/resources/img/contactos_512x270.png"
				alt = "Contactes" height = "200" />
		</div>
		<h2 class = "text-center">Els meus contactes</h2>
		<table class = "table table-hover table-bordered table-striped mb-4">
			<thead class = "thead-dark text-center">
				<tr>
					<th scope = "col">Nom</th>
					<th scope = "col">Correu Electrònic</th>
					<th scope = "col">Telèfon</th>
					<th scope = "col">Accions</th>
				</tr>
			</thead>
			<tbody>
			<c:forEach var = "contacto" items = "${contactos}">
				<c:url var = "linkEditar" value = "/contacto/edita">
					<c:param name = "id" value = "${contacto.id}" />
				</c:url>
				<c:url var = "linkBorrar" value = "/contacto/borra">
					<c:param name = "id" value = "${contacto.id}" />
				</c:url>
				<tr>
					<th scope = "row" class = "text-center lead font-weight-normal text-info">${contacto.nombre}</th>
					<td scope = "col">${contacto.email}</td>
					<td scope = "col">${contacto.telefono}</td>
					<td scope = "col" class = "d-flex justify-content-center">
						<a  href = "${linkEditar}" 
							class = "btn btn-outline-success btn-sm mr-2">Editar</a>
						<a  href = "${linkBorrar}" 
							onclick = "if(!confirm('Està segur que vol eliminar el contacte?')) return false"
							class = "btn btn-outline-danger btn-sm">Eliminar</a>
					</td>
				</tr>
			</c:forEach>				
			</tbody>
		</table>
		<div class="col-md-4 offset-md-4">
			<a href="nuevo" class = "btn btn-primary btn-block btn-lg">Afegir contacte</a>
		</div>
		<footer class = "mt-5">
			<p class = "lead small font-weight-lighter text-right">CIFO - Curs de desenvolupament Java, Novembre'19</p>
		</footer>
	</body>
</html>