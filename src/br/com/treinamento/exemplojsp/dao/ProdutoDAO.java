package br.com.treinamento.exemplojsp.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

import br.com.treinamento.exemplojsp.model.Produto;

public class ProdutoDAO {

	private Connection bd;

	public ProdutoDAO(Connection bd) {
		this.bd = bd;
	}

	public void inserir(Produto produto) throws SQLException {
		String sql = "INSERT INTO produto (codigo,descricao,valor) VALUES (?,?,?)";
		PreparedStatement comando = (PreparedStatement) bd.prepareStatement(sql);
		comando.setInt(1, produto.getCodigo());
		comando.setString(2, produto.getDescrição());
		comando.setDouble(3, produto.getValor());
		comando.execute();
	}

	public List<Produto> buscarTodos() throws SQLException {
		String sql = "SELECT * FROM produto ORDER BY codigo";
		PreparedStatement comando = (PreparedStatement) bd.prepareStatement(sql);
		ResultSet cursor = comando.executeQuery();
		List<Produto> listaProdutos = new ArrayList<Produto>();

		while (cursor.next()) {
			Produto produto = new Produto();
			produto.setCodigo(cursor.getInt("codigo"));
			produto.setDescrição(cursor.getString("descricao"));
			produto.setValor(cursor.getDouble("valor"));
			listaProdutos.add(produto);
		}

		return listaProdutos;
	}

}
