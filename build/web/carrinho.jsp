<%-- 
    Document   : carrinho
    Created on : 13/09/2017, 20:38:21
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
        <jsp:useBean id="daoCar" scope="page" class="projjsp.Carrinho"/>
        
        <div class="jumbotron text-center">
            <h1>Livraria Malígna</h1>
            <p>A melhor livraria online para você</p> 
        </div>
        
        <c:set var="produtosDoCarrinho"  scope="page" value="${daoCar.mostraCarrinho()}" />
        
        <div class="container">
        <div class="row">
            <c:forEach items="${produtosDoCarrinho}" var="item">
            <div class="col-sm-4">                                  
                <h3>${item.nome}</h3>
                <p>Código: ${item.cod}</p>
                <p>${item.imagem}</p>
                <p>Valor: R$ ${item.preco}</p>
                <p>Qtd. em estoque: ${item.estoque}</p>                
            </div>
            </c:forEach>          
        </div>
        </div>
    </body>
</html>
