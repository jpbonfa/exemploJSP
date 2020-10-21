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
<title>Relação de Filme Gravados</title>
<link href="css/estilo.css" rel="stylesheet"></link>
<script type="text/javascript" src="js/navegacao.js"></script>
</head>
<body class="body2">
	<%
		Connection bd = ConnectionFactory.getConnection();
		FilmeDAO dao = new FilmeDAO(bd);
	%>
	<center>
		<b>
			<h1>Lista de Filmes</h1> <b>
				<table class="table1" border="1">

					<!-- linha de cabeçalho -->
					<tr>
						<td><center>Código</center></td>
						<td><center>Nome</center></td>
						<td><center>Valor</center></td>
					</tr>
					<%
						DecimalFormat df = new DecimalFormat("#.00");
						int quantidade = 0;
						double maior = 0;
						double menor = Integer.MAX_VALUE;
					%>
					<%
						for (Filme f : dao.buscarTodos()) {

							quantidade++;
					%>
					<tr>
						<td><%=f.getCodigo()%></td>
						<td><%=f.getNome()%></td>
						<td>R$&nbsp;<%=f.getValor()%></td>
					</tr>


					<%
						if (maior < f.getValor()) {
								maior = f.getValor();
							}
							if (menor > f.getValor()) {
								menor = f.getValor();
							}
						}
					%>
				</table>



				<div align="center" class="div6">
					Quantidade de Filmes:
					<%=quantidade%><br /> Maior Valor: R$
					<%=df.format(maior)%><br /> Menor Valor: R$
					<%=df.format(menor)%>

				</div>
		</b> <br /> <br />
			<button type="button" onclick="index()">Voltar</button>
		</b>
	</center>

</body>
</html>