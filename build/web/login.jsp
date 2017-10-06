<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="simpletag" uri="/WEB-INF/tlds/simpleTag" %>

<!DOCTYPE html>

<head>
  <title>login</title>
  <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link href="style.css" rel="stylesheet" type="text/css">
</head>

    
    <jsp:useBean id="daoC" scope="page" class="projjsp.Clientes"/>
    
    <script>alert(param.status);</script>
    
    <div class="jumbotron text-center">
        <h1>Livraria Malígna</h1>
        <p>A melhor livraria online para você</p>       
    </div>
    
     
    
<c:if test="${param.status == 'Logar'}">    
    <c:set var="existeCliente" scope="page" value="${daoC.getCliente(param.login)}" />    
    <script>${pageScope.existeCliente}</script>
    <script>alert(pageScope.existeCliente);</script>
     
    <c:set var="senhaCorretaCliente" scope="page" value="${daoC.senhaCorreta(param.login, param.senha)}" /> 
    <script>${pageScope.senhaCorretaCliente}</script>
    <script>alert(pageScope.senhaCorretaCliente);</script>

    <c:choose>
         <c:when test = "${pageScope.existeCliente != null}">
            <c:choose> 
                <c:when test = "${pageScope.senhaCorretaCliente}">
                    <script>alert('login e senha corretos!');</script>
                    <jsp:forward page="clienteLogado.jsp"/> 
                </c:when>       
            </c:choose>
         </c:when>        
         <c:otherwise>
            <script>alert('Insira dados corretos');</script>
         </c:otherwise>
    </c:choose> 
</c:if>  
    
    <div class="login-page">
        <div class="form">
            <form class="login-form" action="login.jsp">
                <input type="login" name="login" placeholder="email" required="required"/><br><br>
                <input type="password" name="senha" placeholder="senha" required="required"/><br><br>
                <input type="submit" value="Logar" name="status">
            </form>
        </div>
    </div>


