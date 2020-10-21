package br.com.treinamento.exemplojsp.util;

import java.sql.SQLException;

import com.mysql.jdbc.Connection;

import br.com.treinamento.exemplojsp.dao.ProdutoDAO;
import br.com.treinamento.exemplojsp.model.Produto;

public class TesteProduto {

	public static void main(String[] args) {
		Produto produto = new Produto();
		produto.setCodigo(1);
		produto.setDescrição("teste");
		produto.setValor(20);

		Connection bd = ConnectionFactory.getConnection();
		ProdutoDAO dao = new ProdutoDAO(bd);

		try {
			dao.inserir(produto);
			System.out.println("Produto salvo com sucesso");
		} catch (SQLException e) {
			System.out.println("Erro ao inserir produto");
			e.printStackTrace();
		}

	}

}
