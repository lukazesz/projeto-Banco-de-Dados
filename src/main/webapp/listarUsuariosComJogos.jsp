<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="bd.dto.UsuarioJogoDTO" %>

<h2>Usuários e seus Jogos</h2>

<table border="1">
<tr>
    <th>Usuário</th>
    <th>Jogo</th>
</tr>

<%
List<UsuarioJogoDTO> lista = (List<UsuarioJogoDTO>) request.getAttribute("lista");
for(UsuarioJogoDTO u : lista){
%>
<tr>
    <td><%= u.getNomeUsuario() %></td>
    <td><%= u.getNomeJogo() %></td>
</tr>
<% } %>

</table>