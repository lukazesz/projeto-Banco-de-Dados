<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="bd.dto.UsuarioQuantidadeDTO" %>

<h2>Quantidade de Jogos por Usuário</h2>

<table border="1">
<tr>
    <th>Usuário</th>
    <th>Quantidade</th>
</tr>

<%
List<UsuarioQuantidadeDTO> lista = (List<UsuarioQuantidadeDTO>) request.getAttribute("lista");
for(UsuarioQuantidadeDTO u : lista){
%>
<tr>
    <td><%= u.getNome() %></td>
    <td><%= u.getQuantidadeJogos() %></td>
</tr>
<% } %>

</table>