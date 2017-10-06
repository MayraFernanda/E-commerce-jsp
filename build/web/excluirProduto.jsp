<%-- 
    Document   : excluirProduto
    Created on : 05/09/2017, 13:55:25
    Author     : u14189
--%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="simpletag" uri="/WEB-INF/tlds/simpleTag" %>
<!DOCTYPE html>
<html>
    <head>
        <<meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link href="style.css" rel="stylesheet" type="text/css">
    </head>
    <body style= "background-color:#7DCC86;">
        <jsp:useBean id="daoP" scope="page" class="projjsp.Produtos" />
        
        <div class="jumbotron text-center">
            <h1>Livraria Malígna</h1>
            <p>A melhor livraria online para você</p> 
        </div>

          <div class="login-page">
            <div class="form">
        <div name='content'>
            <form action="excluirProduto.jsp">
                <input type="text" name="cod" required="required" value="" placeholder="código..."><br><br>  
                <input type="submit" value="Excluir" name="status">
            </form></div></div>
        </div>
        
        <c:if test="${param.status == 'Excluir'}">
            <simpletag:excluirProduto cod="${param.cod}" />
            <script>alert('Livro excluído com sucesso!');</script>

        </c:if> 
    </body>

    
</html>
