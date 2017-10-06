<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
	<title>Livraria</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body style= "background-color:#8cc46c;">
    <jsp:useBean id="daoP" scope="page" class="projjsp.Produtos"/>
    
    <div class="jumbotron text-center">
        <h1>Livraria Malígna</h1>
        <p>Muitos livros malignos para te fazer chorar de desespero</p>
        <h6>
            <form action="Index.jsp">              
                <a href="login.jsp">Login Cliente</a> |
                <a href="loginAdm.jsp">Login Adm</a> |
                <a href="cadastrarCliente.jsp">Cadastre-se</a>
            </form>     
        </h6>      
    </div>
   
    <div>
        <content>
                <c:set var="listaProdutos"  scope="page" value="${daoP.getProdutos()}" /> 
      
        </content> 
    </div>
    
    <div class="container">
        <div class="row">
            <c:forEach items="${listaProdutos}" var="item">
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