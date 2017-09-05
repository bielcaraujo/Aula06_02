<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Exercício Randomico</title>
    </head>
    <body>
        <h1>Número aletórios</h1>
        <%
            int n = 10;
            try{
                n = Integer.parseInt(request.getParameter("n"));
                
            }
            catch(Exception ex){
                
            }
        %>
        <form>
            Quantidade:
            <input type="text" name="n" value="<%=n%>"/>
            <input type="submit" value="Gerar"/><br/><br/>
        </form>
            <%if(request.getParameter("n") != null){%>
            <hr/>
                <table border="1">
                    <tr><th>Índice</th><th>Número</th>
                        <%for(int i=1; i<=n; i++){%>
                            <tr>
                                <td><%=i%></td>
                                <td><%=((int)(Math.random()*100))%></td>
                            </tr>
                        <%}%>
                </table><br/><br/>      
            <%}%>
            <a href="home.jsp">Página inicial</a>
    </body>
</html>
