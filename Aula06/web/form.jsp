<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Exércicio Form</title>
    </head>
    <body>
        <h1>Formulário de idenficação:</h1>
        <%
            String IdForm = request.getParameter("IdForm");
            String nome ="", idade="";
            if(IdForm!=null){
                nome = request.getParameter("nome");
                idade = request.getParameter("idade");
            }
        %>
        <form>
            Nome:<br/>
            <input type="text" name="nome" value="<%=nome%>"/><br/>
            Idade:<br/>
            <input type="text" name="idade" value="<%=idade%>"/><br/>
            <input type="submit" name="IdForm" value="Enviar"/><br/><br/>
        </form>
        <%if(IdForm !=null){%>
            <h2>Você se chama <u><%=nome%></u></h2><br/>
            <h2>...e tem <u><%=idade%></u> anos</h2><br/><br/>
        <%}%>
        <a href="teste.jsp">Página inicial</a>
    </body>
</html>
