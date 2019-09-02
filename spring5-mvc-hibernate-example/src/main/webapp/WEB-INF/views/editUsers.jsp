<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <link rel="stylesheet" type="text/css" href="resources/css/estilos.css"/>
        <style type="text/css">
            .error {
		color: red;
            }
            table {
		width: 50%;
		border-collapse: collapse;
		border-spacing: 0px;
            }
            table td {
		border: 1px solid #565454;
		padding: 20px;
            }
        </style>
    </head>
    <body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">
	
        <h1>Input Form</h1>
	
        <form:form action="addUser" method="post" modelAttribute="user">
            <table>
                <tr>
                    <td>Name</td>
                    <td>
                        <form:input path="name" /> <br />
                        <form:errors path="name" cssClass="error" />
                    </td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td>
                        <form:input path="email" /> <br />
                        <form:errors path="email" cssClass="error" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2"><button type="submit">Submit</button></td>
                </tr>
            </table>
	</form:form>
        
	<h2>Users List</h2>
        
	<table>
            <tr>
		<td><strong>Name</strong></td>
		<td><strong>Email</strong></td>
            </tr>
	<c:forEach items="${users}" var="user">
            <tr>
		<td>${user.name}</td>
		<td>${user.email}</td>
            </tr>
	</c:forEach>
	</table>
        
        
        
        <div class="login-box">
            <img src="resources/images/logo.png" alt="Logo de login"/>
            <h1>Ingresar</h1>
            <form>
                <label for="Nombre">Nombre de usuario</label>
                <input type="text" placeholder="Nombre de usuario">
                
                <label for="ctr">Contraseña</label>
                <input type="password" placeholder="Contraseña">
                
                <input type="submit" value="Iniciar sesión">
            
                <a href="#">Olvido la contraseña</a>
                <a href="home">Registrarse</a>
                  
            </form>
        </div>
    </body>
</html>