<%-- 
    Document   : disciplinas
    Created on : 05/10/2020, 17:37:35
    Author     : lubia
--%>
<%@page import="java.util.Objects"%>
<%@page import="java.util.ArrayList"%>
<%@page import="avaliacao.Disciplina"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
    ArrayList<Disciplina> getDisciplinas = Disciplina.getList((ArrayList)application.getAttribute("disciplina"));
                                                                         //ele pega o array list que já existe no sistema
    if(!Objects.isNull(request.getParameter("update"))){
        Integer id = Integer.parseInt(request.getParameter("id"));
        
        if(Objects.isNull(request.getParameter("nota")) || request.getParameter("nota").isEmpty() ){           
            out.println("<script>alert('Campo em branco.')</script>");
        }else{
            
            Double nota = Double.parseDouble(request.getParameter("nota"));
            if(nota >= 0  && nota <= 10){
                getDisciplinas.get(id).setNota(nota);
                response.sendRedirect(request.getRequestURI());
            }else{
                out.println("<script>alert('Nota digitada é inválida.')</script>");
            }
        }
    }
%>
<%@include file='WEB-INF/includes/menu.jsp' %>
        <h2 class="center-align">Disciplinas</h2>
        <table border="1">
            <tr>
                <th>Nome</th>
                <th>Ementa</th>
                <th>Ciclo</th>
                <th>Nota</th>
                    <th>Editar nota</th>
            </tr>
            <%for(int i=0; i<getDisciplinas.size(); i++){%>
            <% Disciplina disciplina = getDisciplinas.get(i); %>
                <tr>
                    <td><%= disciplina.getNome() %></td>
                    <td><%= disciplina.getEmenta() %></td>
                    <td><%= disciplina.getCiclo() %></td>
                    <td><%= disciplina.getNota() %></td>
                    <td>
                        <form>
                            <input type="text" name="nota" />
                            <input class="waves-effect waves-light btn" type="submit" name="update" value="Alterar"/>
                            <input type="hidden" name="id" value="<%= i %>"/>
                        </form>
                    </td>
                </tr>
            <%}%>
        </table>
<%@include file='WEB-INF/includes/footer.jsp' %>
