<%-- 
    Document   : AdmLogado
    Created on : 05/09/2017, 13:54:21
    Author     : u14189
--%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Área Administrador</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body style= "background-color:#8cc46c;">
        
        <div class="jumbotron text-center">
        <h1>Livraria Malígna</h1>
        <p>A melhor livraria online para você</p>    
    </div>
        
        <div>
            <content>               
                <h4> <a href="alterarSenhaAdm.jsp"> Alerar sua senha</a></h4><p>
                <h4> <a href="cadastrarAdm.jsp"> Cadastrar Administrador</a></h4><p>
                <h4> <a href="excluirAdm.jsp"> Excluir Administrador</a></h4><p>
                <h4><a href="produtos.jsp"> Produtos</a></h4><p>
                <h4><a href="clientes.jsp"> Clientes</a></h4><p> 
                <h4><a href="Index.jsp"> Sair</a></h4>
            </content>   
        </div>
        
    </body>
</html>
