<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Productos Organicos</title>
</head>
<body>
<nav>
Panel de navegacion 
</nav>
<section>
<h1>Productos</h1>
<form action="del" method="get">
	<input type="hidden" id="idProducto" name="idProducto" value="${producto.idProducto}"/>
	<strong>¿Desea eliminar el Dato?</strong>
	<br/><br/>
	<button type="submit">Eliminar</button>
	<button type="button" onClick="windows.location.href='/bd-productos-organicos-web/productos/findAll'; return false">Cancelar</button>
	
</form>
<footer>
<div>Copyright - Programación Distribuida 2024</div>
</footer>
</section>

</body>
</html>