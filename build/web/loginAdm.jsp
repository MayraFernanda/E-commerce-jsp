<%-- 
    Document   : loginAdm
    Created on : 13/09/2017, 11:03:05
    Author     : u14189
--%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Administrador</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link href="style.css" rel="stylesheet" type="text/css">
    </head>
    <body>
        <jsp:useBean id="daoA" scope="page" class="projjsp.Administradores" />
        
        <div class="jumbotron text-center">
            <h1>Livraria Malígna</h1>
            <p>A melhor livraria online para você</p>       
        </div>
        
        <c:if test="${param.status == 'Logar'}">   
            <c:set var="existeAdm" scope="page" value="${daoA.getAdministrador(param.login)}" />            
            <c:set var="senhaCorretaAdm" scope="page" value="${daoA.senhaCorreta(param.login, param.senha)}" />

            <c:choose>        
                <c:when test = "${pageScope.existeAdm != null}">
                    <c:choose> 
                        <c:when test = "${pageScope.senhaCorretaAdm}">
                            <script>alert('login e senha corretos!');</script>
                            <jsp:forward page="AdmLogado.jsp"/>
                        </c:when>
                    </c:choose>                        
                </c:when>  
            </c:choose>
        </c:if>
                    
        <div class="login-page">
        <div class="form">
            <form class="login-form" action="loginAdm.jsp">
                <input type="login" name="login" placeholder="login" required="required"/> <br><br>
                <input type="password" name="senha" placeholder="senha" required="required"/> <br><br>
                <input type="submit" value="Logar" name="status">
            </form>
        </div>
    </div>
    </body>
</html>
