<%-- 
    Document   : result_table
    Created on : Nov 7, 2020, 2:27:56 PM
    Author     : Abdulelah Adam
    ID         : 20170416
    Group No.  : IS_DS_1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
            table, tr, td{
                border: 1px solid black
            }
            #firstCell, #diagonalCell{
                background-color: rgb(204, 55, 65);
                color: white;
            }
            
            .numCell{
                background-color: blue;
                color: white;
            }
            
            
            
         
        </style>
        <title>Multiplication Table</title>
    </head>
    <body>
        <%
            String counterValue = request.getParameter("counterValue");
            int counter = Integer.parseInt(counterValue);
        
        %>
        <h2>Thanks for using Mini-Multiplication Table</h2>
        
        <table>
            <tr>
                <td id="firstCell">Multiply</td>
                <%for(int firstRow  = 1; firstRow <= counter; firstRow++) { %>
                <td class="numCell"><%= firstRow %></td>
                <% } %>
            </tr>
            <%
            for (int row = 1; row <= counter; row++) {
            %>
            <tr>
                <td class='numCell'><%= row %></td>
            <%
                for (int col = 1; col <= counter; col++) {%>
                     <%if (row == col) { %>
                     <td id="diagonalCell"><%= row * col %></td>
                     <% } else { %>
                    <td><%= row * col %></td>
                    <%
                } }
            %>
            </tr>
            <%
            }
        %>

                
        </table>
                
        <br>
       
        
        <a href="index.html"><button>back</button></a>
    </body>
</html>
