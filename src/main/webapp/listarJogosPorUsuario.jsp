<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="bd.dto.JogosDTO" %>

<h2>Jogos por Usuário</h2>

<table border="1">
<tr>
    <th>ID</th>
    <th>Nome</th>
    <th>Data</th>
    <th>Usuário</th>
</tr>

<%
List<JogosDTO> lista = (List<JogosDTO>) request.getAttribute("lista");
for(JogosDTO j : lista){
%>
<tr>
    <td><%= j.getId() %></td>
    <td><%= j.getNomeJogo() %></td>
    <td><%= j.getDataCompra() %></td>
    <td><%= j.getNomeUsuario() %></td>
</tr>
<% } %>

</table>