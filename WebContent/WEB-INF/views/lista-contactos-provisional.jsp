<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Contactes</title>
	</head>
	<body>
		<h1>Lista de contactes</h1>
		<table>
			<tr>
				<td>ID</td>
				<td>Nom</td>
				<td>Correu Electrònic</td>
				<td>Telèfon</td>
			</tr>
			<c:forEach var = "contacto" items = "${contactos}">
				<tr>
					<td>${contacto.id}</td>
					<td>${contacto.nombre}</td>
					<td>${contacto.email}</td>
					<td>${contacto.telefono}</td>
				</tr>
			</c:forEach>
		</table>
	</body>
</html>