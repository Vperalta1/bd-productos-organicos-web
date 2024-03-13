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
Panel de navegacion 
</nav>
<section>
<h1>Productos</h1>
<form action="add" method="POST">
idProducto
<input type="hidden" id="idProducto" name="idProducto" value="${producto.idProducto}"/>
<br/><br>
Nombre
<input type="text" id="nombre" name="nombre" value="${producto.nombre}"/>
<br/><br>
Descripcion
<input type="text" id="descripcion" name="descripcion" value="${producto.descripcion}"/>
<br/><br>
Precio
<input type="number" step="any" id="precio" name="precio" value="${producto.precio}"/>
<br/><br>
Stock
<input type="number" id="stock" name="stock" value="${producto.stock}"/>
<br/><br>
Imagen
<input type="text" id="imagen" name="imagen" value="${producto.imagen}"/>
<br/><br>

<button type="submit">Guardar</button>
<button type="button" onClick="windows.location.href='/bd-productos-organicos-web/productos/findAll'; return false">Cancelar</button>

</form>
</section>
<footer>
<div>Copyright - Programación Distribuida 2024</div>
</footer>
</body>
</html>