<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.util.List" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="com.arquitecturajava.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	
	<title>Formulario Libro</title>
	
	<link rel="stylesheet" type="text/css" href="css/formato.css"/>
	<script type="text/javascript" src="js/validacion.js"></script>
	
</head>

<body>
	<form id="miformulario" action="InsertarLibro.jsp" onsubmit="return validacion();">
		<fieldset>
			<legend>Formulario alta libro</legend>
			<p>
				<label for="isbn">ISBN:</label>
				<input id="isbn" type="text" name="isbn" />
			</p>
			<p>
				<label for="titulo">T&iacute;tulo:</label>
				<input id="titulo" type="text" name="titulo" />
			</p>
			<p>
				<label for="categoria">Categor&iacute;a:</label>
				<select name="categoria">
					<% List<String> listaDeCategorias=null;
						listaDeCategorias=Libro.buscarTodasLasCategorias();
						for(String categoria:listaDeCategorias) { %>
							<option value="<%=categoria%>"><%=categoria%></option>
						<% } %>
				</select>
				<br/>
			<p>
				<input type="submit" value="Insertar" />
			</p>
		</fieldset>
	</form>
</body>
</html>
