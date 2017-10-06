<%-- 
    Document   : incluirCliente
    Created on : 12/09/2017, 20:29:44
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
           <content>
                <div class="login-page">
                    <div class="form">
                <form class="login-form" action="cadastrarCliente.jsp">
                    <input type="text" name="id" required="required" value=""placeholder="id"><br><br> 
                    <input type="text" name="nome" required="required" value="" placeholder="nome"><br><br>              
                    <input type="text" name="endereco" required="required" value="" placeholder="endereço"><br><br>
                    <input type="text" name="telefone" required="required" value="" placeholder="telefone"><br><br>
                    <input type="text" name="email" required="required" value="" placeholder="e-mail"><br><br>
                    <input type="text" name="senha" required="required" value="" placeholder="senha"><br><br>                   
                    <input type="submit" value="Cadastrar" name="status">
                    </form>
                    </div></div>
            </content> 
        </div>
        
        
        <c:if test="${param.status == 'Cadastrar'}">
            <simpletag:cadastrarCliente id="${param.id}" nome="${param.nome}" endereco="${param.endereco}" telefone="${param.telefone}" email="${param.email}" senha="${param.senha}" />
            <script>alert('Cliente cadastrado com sucesso!');</script> 
        </c:if>        
    
    </body>
</html>
