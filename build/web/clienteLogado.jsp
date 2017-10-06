<%-- 
    Document   : clienteLogado
    Created on : 05/09/2017, 13:53:46
    Author     : u14189
--%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Área Cliente</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body style= "background-color:#8cc46c;">
        <jsp:useBean id="daoC" scope="page" class="projjsp.Clientes" />
        <jsp:useBean id="daoP" scope="page" class="projjsp.Produtos"/>
        <jsp:useBean id="daoCar" scope="page" class="projjsp.Carrinho"/>
        <c:set var="listaProdutos"  scope="page" value="${daoP.getProdutos()}" /> 
        
        <div class="jumbotron text-center">
            <h1>Livraria Malígna</h1>
            <p>A melhor livraria online para você</p>
            <a href="carrinho.jsp">Checar carrinho</a> |
            <a href="AlterarPropCliente.jsp">Alterar meu cadastro</a> |
            <a href="Index.jsp">Sair</a>
        </div>
        
        <div class="container">
        <div class="row">
            
            <c:forEach  items="${listaProdutos}" var="item">
            <div class="col-sm-4">
                
                <form class="login-form" action="clienteLogado.jsp">
                    <h3>${item.nome}</h3> 
                    <p>Código: ${item.cod}</p>
                    <p>${item.imagem}</p>
                    <p>Valor: R$ ${item.preco}</p>
                    <p>Qtd. em estoque: ${item.estoque}</p> 
                    <input type='submit' name='status' value='Comprar' id="${item.cod}" onClick="adicionarAoCarrinho(${item.cod})">
                </form>
                
            </div>
            </c:forEach>
            
            <c:if test="${param.status == 'Comprar'}">      
                <c:set var="adicionou" scope="page" value="${daoCar.adicionar(param.id)}" />    
                <script>alert('Adicionado!');</script>
            </c:if>
                 
            
            
           
        </div>
    </div>
    </body>
</html>
    