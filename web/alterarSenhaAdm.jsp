<%-- 
    Document   : alterarSenhaAdm
    Created on : 12/09/2017, 11:08:40
    Author     : u14189
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link href="style.css" rel="stylesheet" type="text/css">
    </head>
    <body style= "background-color:#7DCC86;">
        <jsp:useBean id="daoA" scope="page" class="projjsp.Administradores" />
        
        <div class="jumbotron text-center">
        <h1>Livraria Malígna</h1>
        <p>A melhor livraria online para você</p> 
    </div>
   
        <div>
            <content>
                <div class="login-page">
                <div class="form">
                <form class="login-form" action="alterarSenhaAdm.jsp">
                    <input type="text" name="login" required="required" value="" placeholder="login"><br><br>  
                    <input type="text" name="novaSenha" required="required" value="" placeholder="nova senha"><br><br>          
                    <input type="submit" value="Alterar" name="status">
                </form>
            </content>
            
        </div>
        
        <c:if test="${param.status == 'Alterar'}">
            <c:set var="alterouSenha" scope="page" value="${daoA.alterarSenha(param.login, param.novaSenha)}" />
            <script>alert('Senha Alterada com Sucesso!');</script>
            
        </c:if>
     
    </body>
    
    
</html>
