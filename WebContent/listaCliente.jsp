<%@page import="com.mysql.jdbc.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="br.com.treinamento.exemplojsp.dao.*"%>
<%@page import="br.com.treinamento.exemplojsp.model.*"%>
<%@page import="br.com.treinamento.exemplojsp.util.*"%>
<%@page import="java.sql.*"%>
<%@page import="java.text.DecimalFormat;"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Relação de Clientes Gravados</title>
<link href="css/estilo.css" rel="stylesheet"></link>
<script type="text/javascript" src="js/navegacao.js"></script>
</head>
<body class="body3">

	<%
		Connection bd = ConnectionFactory.getConnection();
		ClienteDAO dao = new ClienteDAO(bd);
	%>

	<center>
		<b>
			<h1>Lista de Clientes</h1>

			<table border="1" class="table1">

				<!-- linha de cabeçalho -->
				<tr>
					<td><center>Código</center></td>
					<td><center>Nome</center></td>
					<td><center>Celular</center></td>
					<td><center>Idade</center></td>
				</tr>
				<%
					DecimalFormat df = new DecimalFormat("#.0");
					int quantidade = 0;
					double media = 0.0;
				%>
				<%
					for (Cliente c : dao.buscarTodos()) {

						quantidade++;
				%>

				<tr>
					<td><%=c.getCodigo()%></td>
					<td><%=c.getNome()%></td>
					<td><%=c.getCelular()%></td>
					<td><%=c.getIdade()%></td>
				</tr>

				<%
					media += c.getIdade();
					}
					media = media / quantidade;
				%>
			</table>
			<div align="center" class="div6">
				Quantidade de Clientes:
				<%=quantidade%>
				<br/>
				Media de idade:
				<%=df.format(media)%>

			</div> <br /> <br />
			<button type="button" onclick="index()">Voltar</button>
		</b>
	</center>
</body>
</html>