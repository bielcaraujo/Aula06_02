<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Exercício Tabuada</title>
    </head>
    <body>
        <h1>Tabuada</h1>
        <%
            int n = 10;
            try{
                n = Integer.parseInt(request.getParameter("n"));
                
            }
            catch(Exception ex){
                
            }
        %>
        <form>
            Elemento:
            <input type="text" name="n" value="<%=n%>"/>
            <input type="submit" value="Gerar"/><br/><br/>
        </form>
            <%if(request.getParameter("n") != null){%>
            <hr/>
                <table>
                    <th>Índice</th><th>Número</th>
                        <%for(int i=1; i<=n; i++){%>
                            <tr>
                                <td><%=n%> x <%=i%></td>
                                <td><%=n*i%></td>
                            </tr>
                        <%}%>
                </table><br/><br/>      
            <%}%>
            <a href="home.jsp">Página inicial</a>
    </body>
</html>
