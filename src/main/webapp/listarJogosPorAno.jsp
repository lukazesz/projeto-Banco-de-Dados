<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="bd.dto.JogosAnoDTO" %>

<h2>Jogos por Ano</h2>

<table border="1">
<tr>
    <th>Ano</th>
    <th>Total de Jogos</th>
</tr>

<%
List<JogosAnoDTO> lista = (List<JogosAnoDTO>) request.getAttribute("lista");
for(JogosAnoDTO j : lista){
%>
<tr>
    <td><%= j.getAno() %></td>
    <td><%= j.getTotalJogos() %></td>
</tr>
<% } %>

</table>