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
	
        <div class="login-box" align-items="center">
            <img src="resources/images/logo.png" alt="Logo de login" style="margin-left:650px;" />
        </div>
	
        <form:form action="addUser" method="post" modelAttribute="user">
            <table style="margin: 0 auto; border: hidden;" >
                <tr style="border: hidden;text-align: center">
                    <td style="border: hidden;text-align: center"><p style="font: oblique bold 180% fantasy; color: #ffffff;">Name</p></td>
                    <td style="border: hidden">
                        <form:input path="name" /> <br />
                        <form:errors path="name" cssClass="error" />
                    </td>
                </tr>
                <tr style="border: hidden;text-align: center">
                    <td style="border: hidden;text-align: center"><p style="font: oblique bold 180% fantasy; color: #ffffff;">Email</p></td>
                    <td style="border: hidden;">
                        <form:input path="email" /> <br />
                        <form:errors path="email" cssClass="error" />
                    </td>
                </tr>
                <tr style="border: hidden;text-align: center">
                    <td colspan="2"><button type="submit">Submit</button></td>
                </tr>
            </table>
	</form:form> 
        
	<h2 style="text-align: center;"><p style="font: oblique bold 190% fantasy; color: #c7254e;">Lista de usuarios</p></h2>
        
	<table style="margin: 0 auto;border: hidden;text-align: center">
            <tr style="border: hidden;text-align: center">
                <td><strong><p style="font: oblique bold 120% fantasy; color: #c7254e;">Nombre</p></strong></td>
		<td><strong><p style="font: oblique bold 120% fantasy; color: #c7254e;">Email</p></strong></td>
                <td><strong><p style="font: oblique bold 120% fantasy; color: #c7254e;">Control</p></strong></td>
            </tr>
	<c:forEach items="${users}" var="user">
            <tr style="border: hidden;text-align: center">
                <td style="border: hidden;text-align: center">${user.name}</td>
		<td style="border: hidden;text-align: center">${user.name}</td>
		<td style="border: hidden;text-align: center">${user.email}</td>
                <td style="border: hidden;text-align: center">
                    <button href="UpdateUser"></button>
                    <button href="DeleteUser?del="${user.email}></button>
                </td>
            </tr>
	</c:forEach>
            
	</table>
        <a style="margin-left:765px;" href="home">ingresar</a>
        
        
       
    </body>
</html>