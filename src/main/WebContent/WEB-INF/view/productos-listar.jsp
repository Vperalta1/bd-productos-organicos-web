<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Productos Organicos</title>
</head>
<body>

<h1>Productos</h1>
		 <button><a href="${pageContext.request.contextPath}/productos/findOne?opcion=1">Agregar</a></button>

<table>
 <thead>
 <tr>
     <th>id_producto</th>
     <th>nombre</th>
     <th>descripcion</th>
     <th>precio</th>
     <th>stock</th>
     <th>imagen</th>
     </tr>
     
  <thead>
  <tbody>
  
  <c:forEach var="item" items="${productos}">
     <tr>
	     <td> ${item.idProducto}</td>
	     <td>${item.nombre}</td>
	     <td>${item.descripcion}</td>
	     <td>${item.precio}</td>
	     <td>${item.stock}</td>
	     <td>${item.imagen}</td>	     
	     <td>
		 <button><a href="${pageContext.request.contextPath}/productos/findOne?idProducto=${item.idProducto}&opcion=1">Actualizar</a></button>
		 <button><a href="${pageContext.request.contextPath}/productos/findOne?idProducto=${item.idProducto}&opcion=2">Eliminar</a></button>

     </tr>
 		</c:forEach>
</tbody>
</table>

</body>
</html>