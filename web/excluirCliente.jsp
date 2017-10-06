<%-- 
    Document   : excluirCliente
    Created on : 12/09/2017, 20:29:58
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
        <jsp:useBean id="daoC" scope="page" class="projjsp.Clientes" />
        
        <div class="jumbotron text-center">
            <h1>Livraria Malígna</h1>
            <p>A melhor livraria online para você</p> 
        </div>
              
        <div>
            <div class="login-page">
            <div class="form">
            <form action="excluirCliente.jsp">
                <input type="text" name="cod" required="required" value="" placeholder="código..."><br>
                <input type="submit" value="Excluir" name="status">
            </form>
            </div></div>
        </div>

        <c:if test="${param.status == 'Excluir'}">
            <simpletag:excluirCliente id="${param.id}"/>
                <script>alert('Cliente excluído com sucesso!');</script>         
        </c:if>        
        
    </body>
</html>
