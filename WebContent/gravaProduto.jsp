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
<title>Gravando Produto</title>
</head>
<body>
	<%
		Connection bd = ConnectionFactory.getConnection();

		Produto produto = new Produto();
		produto.setCodigo(Integer.parseInt(request.getParameter("codigo")));
		produto.setDescrição(request.getParameter("descricao"));
		produto.setValor(Double.parseDouble(request.getParameter("valor")));
		

		ProdutoDAO dao = new ProdutoDAO(bd);

		try {
			dao.inserir(produto);
			response.sendRedirect("listaProduto.jsp");
		} catch (Exception e) {
			e.printStackTrace();
		}
	%>

</body>
</html>