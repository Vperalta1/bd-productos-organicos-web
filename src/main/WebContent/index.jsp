<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<nav>
		<h1>Productos Organicos</h1>
 	<ul>
 	<li><a href="${pageContext.request.contextPath}/">HOME</a></li>
 	 <li><a href="${pageContext.request.contextPath}/productos/findAll">Productos</a></li>
 	<li><a href="${pageContext.request.contextPath}/categorias/findAll">Categorias</a></li>
 	<li><a href="${pageContext.request.contextPath}/reportes">Reportes</a></li>
 	<li><a href="${pageContext.request.contextPath}/contacto">Contactos</a></li>
 	</ul>
 	</nav>
 <section>
 <p>Aqui viene lo del Home</p>
 </section>
 <footer>
 <div>Copyright - Programacion Distribuida 2024</div>
 </footer>
</body>
</html>