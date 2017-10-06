<%-- 
    Document   : alterarCliente
    Created on : 12/09/2017, 20:30:13
    Author     : u14189
--%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
        
        <div class="login-page">
        <div class="form">
        <form class="login-form" action="alterarCliente.jsp">
            Insira as informações do cliente que deseja alterar:<br><br>
                    <input type="text" name="id" required="required" value=""placeholder="id"><br><br>
                    <input type="text" name="nome" required="required" value="" placeholder="nome"><br><br>              
                    <input type="text" name="endereco" required="required" value="" placeholder="endereco"><br><br>
                    <input type="text" name="telefone" required="required" value="" placeholder="telefone"><br><br>
                    <input type="text" name="email" required="required" value="" placeholder="email"><br><br>
                    <input type="text" name="senha" required="required" value="" placeholder="senha"><br><br>                   
                    <input type="submit" value="Alterar" name="status">
                    
        </form>  </div></div>  
        
        <c:if test="${param.status == 'Alterar'}">
            <c:set var="alterou" scope="page" value="${daoC.alterar(param.id, param.nome, param.endereco, param.telefone, param.email, param.senha)}" />
            <script>alert('Cliente alterado com sucesso!');</script>
        </c:if>   

    </body>
</html>
