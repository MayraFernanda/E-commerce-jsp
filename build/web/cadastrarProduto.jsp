<%-- 
    Document   : cadastrarProduto
    Created on : 12/09/2017, 11:41:35
    Author     : u14189
--%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="simpletag" uri="/WEB-INF/tlds/simpleTag" %>
<!DOCTYPE html>
<html>
    <head>
        <script type="text/javascript" src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
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
        
        <div>
            <content>
                <div class="login-page">
                    <div class="form"> 
                <form class="login-form" action="cadastrarProduto.jsp">
                    <input type="text" name="cod" required="required" value="" placeholder="código"><br><br>
                    <input type="text" name="nome" required="required" value="" placeholder="nome"><br><br>
                    <input type="text" name="preco" required="required" value="" placeholder='preço'><br><br>
                    <input type="text" name="estoque" required="required" value="" placeholder='estoque' ><br><br>
                    <img alt="Imagem" scr="" id="target" width="100" height="100"><br><br>
                    <input type="file" id="file" name="file" onchange="uploadFile();"/><br><br>                   
                    <input type="submit" value="Cadastrar" name="status" >
                    </form>
            </content>
        </div>
        
        <c:if test="${param.status == 'Cadastrar'}">
                      
        </c:if>
        
            <script type="text/javascript"> 
                function uploadFile(){
                    var target = document.querySelector("img");
                    var file = document.querySelector("input[type=file]").files[0];
                
                    var reader = new FileReader();
                    
                    reader.onloadend = function(){
                        target.src = reader.result;
                        
                         ///////// UPLOAD AJAX ////////////
                        
                        $.ajax({
                            method : "POST",
                            url: "FileUpload",
                            data: {fileUpload : reader.result}
                        }).done(function(response){
                            alert("Upload realizado com sucesso!");
                        }).fail(function(xhr, status, errorThrown){
                            alert("Error: " + xhr.responseText);
                        });
                        ///////// UPLOAD AJAX ////////////
                    };
                
                    if(file){
                        reader.readAsDataURL(file); 
                    }else{
                        target.src="";
                    }
                }
                
               
            </script>
     
  
    </body>
</html>
