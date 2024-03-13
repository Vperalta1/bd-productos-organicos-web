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
panel de navegacion 
</nav>
<section>
<h1>Categorias</h1>
<form action="del" method="get">
	<input type="hidden" id="idCategoria" name="idCategoria" value="${categoria.idCategoria}"/>
	<strong>¿Desea eliminar el Dato?</strong>
	<br/><br/>
	<button type="submit">Eliminar</button>
	<button type="button" onClick="windows.location.href='/bd-productos-organicos-web/categorias/findAll'; return false">Cancelar</button>
	
</form>
</section>
<footer>
<div>Copyright - Programación Distribuida 2024</div>
</footer>
</body>
</html>