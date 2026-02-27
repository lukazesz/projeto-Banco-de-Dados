<%@ page contentType="text/html;charset=UTF-8" %>

<h2>Buscar Jogos Após uma Data</h2>

<form action="listarJogosAposData" method="get">
    Data:
    <input type="date" name="data" required>
    <button type="submit">Buscar</button>
</form>

<br>
<a href="menu.jsp">Voltar</a>