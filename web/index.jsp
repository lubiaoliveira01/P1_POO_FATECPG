<%@page import="avaliacao.Disciplina"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file='WEB-INF/includes/menu.jsp'%>

<div class="section">
    <div class="center-align">
        <h1>Lúbia Costa Martins de Oliveira</h1>
        <hr>
        <h4><b>RA:</b>1290481913023</h4>
        <hr>
        <h5>Número de Disciplinas Matriculadas:</h5>
        <a id="scale-demo" href="disciplinas.jsp" class="btn-floating btn-large scale-transition">
            <i><%= Disciplina.getList().size() %></i>
        </a>
    </div>  
</div>
        
<%@include file='WEB-INF/includes/footer.jsp'%>
           
