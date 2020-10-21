<%@page import="com.mysql.jdbc.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="br.com.treinamento.exemplojsp.dao.*"%>
<%@page import="br.com.treinamento.exemplojsp.model.*"%>
<%@page import="br.com.treinamento.exemplojsp.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Gravando Filme</title>
</head>
<body>
	<%
		Connection bd = ConnectionFactory.getConnection();

		Filme filme = new Filme();
		filme.setCodigo(Integer.parseInt(request.getParameter("codigo")));
		filme.setNome(request.getParameter("nome"));
		filme.setValor(Double.parseDouble(request.getParameter("valor")));

		FilmeDAO dao = new FilmeDAO(bd);

		try {
			dao.inserir(filme);
			response.sendRedirect("listaFilme.jsp");
		} catch (Exception e) {
			e.printStackTrace();
		}
	%>

</body>
</html>