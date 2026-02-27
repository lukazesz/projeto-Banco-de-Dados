<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="bd.model.Usuario" %>

<h2>Usuários Acima da Média</h2>

<table border="1">
<tr>
    <th>ID</th>
    <th>Nome</th>
    <th>Email</th>
</tr>

<%
List<Usuario> lista = (List<Usuario>) request.getAttribute("lista");
for(Usuario u : lista){
%>
<tr>
    <td><%= u.getId() %></td>
    <td><%= u.getNome() %></td>
    <td><%= u.getEmail() %></td>
</tr>
<% } %>

</table>