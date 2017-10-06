<%-- 
    Document   : alterarProduto
    Created on : 12/09/2017, 11:42:29
    Author     : u14189
--%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
        <jsp:useBean id="daoP" scope="page" class="projjsp.Produtos" />
        
        <div class="jumbotron text-center">
            <h1>Livraria Malígna</h1>
            <p>A melhor livraria online para você</p>    
        </div>
        
        
        
        <div class="login-page">
            <form class="login-form" action="alterarProduto.jsp">
                    <input type="text" name="cod" required="required" placeholder="código"><br><br>
                    <input type="text" name="nome" required="required" placeholder="nome"><br><br>
                    <input type="text" name="imagem" required="required" placeholder="imagem"><br><br>                     
                    <input type="text" name="preco" required="required" placeholder="preço"><br><br>
                    <input type="text" name="estoque" required="required" placeholder="estoque"><br><br>
                    <input type="submit" value="Alterar" name="status">
                    
        </form>  </div>
        
        <c:if test="${param.status == 'Alterar'}">
            <c:set var="alterou" scope="page" value="${daoP.alterar(param.cod, param.nome, param.imagem, param.preco, param.estoque)}" />
            <script>alert('Livro alterado com sucesso!');</script>
        </c:if>
        
    </body>
</html>
