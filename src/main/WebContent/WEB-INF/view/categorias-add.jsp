<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
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
<form action="add" method="POST">
Id Categoria
<input type="hidden" id="idCategoria" name="idCategoria" value="${categoria.idCategoria}"/>
<br/><br>
Categoria
<input type="text" id="categoria" name="categoria" value="${categoria.categoria}"/>
<br/><br>
Descripcion
<input type="text" id="descripcion" name="descripcion" value="${categoria.descripcion}"/>
<br/><br>
Imagen
<input type="text" id="imagen" name="imagen" value="${categoria.imagen}"/>
<br/><br>

<button type="submit">Guardar</button>
<button type="button" onClick="windows.location.href='/bd-productos-organicos-web/categorias/findAll'; return false">Cancelar</button>

</form>
</section>
<footer>
<div>Copyright - Programación Distribuida 2024</div>
</footer>
</body>
</html>