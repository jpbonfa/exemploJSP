package br.com.treinamento.exemplojsp.util;

import java.sql.SQLException;

import com.mysql.jdbc.Connection;

import br.com.treinamento.exemplojsp.dao.FornecedorDAO;
import br.com.treinamento.exemplojsp.model.Fornecedor;


public class TesteFornecedor {
	public static void main(String[] args) {

		Fornecedor fornecedor = new Fornecedor();
		fornecedor.setCodigo(1);
		fornecedor.setNome("teste");
		fornecedor.setCidade("São Paulo");
		fornecedor.setTelefone("(11)98711-0380");
		fornecedor.setEmail("teste@teste");

		Connection bd = ConnectionFactory.getConnection();
		FornecedorDAO dao = new FornecedorDAO(bd);

		try {
			dao.inserir(fornecedor);
			System.out.println("Fornecedor salvo com sucesso");
		} catch (SQLException e) {
			System.out.println("Erro ao inserir fornecedor");
			e.printStackTrace();
		}
	}
}
