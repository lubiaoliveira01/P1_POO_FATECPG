<%-- 
    Document   : index
    Created on : 05/10/2020, 17:12:59
    Author     : lubia
--%>
<%@page import="avaliacao.Disciplina"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Objects"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    ArrayList<Disciplina> disciplina = (ArrayList)application.getAttribute("disciplina");
    try{
        if(disciplina == null){
            disciplina = new ArrayList<>();
            disciplina.add(new Disciplina("Banco de Dados","Conceitos de Base de Dados. Modelos conceituais de informações. ",4));
            disciplina.add(new Disciplina("Engenharia de Software III","Conceitos, evolução e importância de arquitetura de software. Padrões de Arquitetura. ",4));
            disciplina.add(new Disciplina("Ingles IV","Consolidação da compreensão e produção oral e escrita por meio da integração das habilidades lingüístico-comunicativas.",4));
            disciplina.add(new Disciplina("Linguagem de Programação IV - INTERNET","Comandos de linguagens usadas na construção e estruturação de sites para a Web. com páginas dinâmi­cas e interativas. Definição de layouts e formatação em geral. Adição de algorítmos usando laços, matrizes, datas, funções e condições. Introdução a Orientação a Objetos utilizando objetos, métodos e propriedades. Integração com Banco de Dados. Exercícios práticos com projeto de criação de sites.",4));
            disciplina.add(new Disciplina("Metodologia da Pesquisa Científico-Tecnológica","O Papel da ciência e da tecnologia. Tipos de conhecimento. Método e técnica.",4));
            disciplina.add(new Disciplina("Programação Orientada a Objetos","Conceitos e evolução da tecnologia de orientação a objetos. Limitações e diferenças entre o paradigma da programação.",4));
            disciplina.add(new Disciplina("Sistemas Operacionais II","Apresentação de um sistema operacional específico utilizado em ambiente corporativo. Requisitos de hardware para instalação do sistema.",4));
            application.setAttribute("disciplina", disciplina);
        }
    }catch(Exception ex){
            out.println("<script>alert('Erro ao processar" + ex + "')</script>");
            }
%>
<%@include file='WEB-INF/includes/menu.jsp%'%>

<div class="section">
    <div class="center-align">
        <h1>Lúbia Costa Martins de Oliveira</h1>
        <hr>
        <h4><b>RA:</b>1290481913023</h4>
        <hr>
        <h5>Número de Disciplinas Matriculadas:</h5>
        <a id="scale-demo" href="disciplinas.jsp" class="btn-floating btn-large scale-transition">
            <i><%= Disciplina.getList(disciplina).size() %></i>
        </a>
    </div>  
</div>
        
<%@include file='WEB-INF/includes/footer.jsp%'%>
           
