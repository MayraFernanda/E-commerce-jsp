<%-- 
    Document   : cadastrarAdm
    Created on : 13/09/2017, 12:39:02
    Author     : u14189
--%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="simpletag" uri="/WEB-INF/tlds/simpleTag" %>
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
                <form class="login-form" action="cadastrarAdm.jsp">
                    <input type="text" name="login" required="required" placeholder="login"><br><br>                              
                    <input type="text" name="senha" required="required" placeholder="senha"><br><br>                    
                    <input type="submit" value="Cadastrar" name="status">
                </form></div></div>
            </content> 
        </div>
        
        <c:if test="${param.status == 'Cadastrar'}">
            <c:set var="cadastrou" scope="page" value="${daoA.incluir(param.login, param.senha)}" />
            <simpletag:cadastrarAdm login="${param.login}" senha="${param.senha}" />
            
            <c:choose> 
                <c:when test = "${pageScope.cadastrou}">
                    <script>alert('Administrador Cadastrado!');</script>
                </c:when>
            </c:choose>     
        </c:if>        
    
    </body>
</html>