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
				<input id="categoria" type="text" name="categoria" /></p>
			<p>
				<input type="submit" value="Insertar" />
			</p>
		</fieldset>
	</form>
</body>
</html>
