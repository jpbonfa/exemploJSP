package br.com.treinamento.exemplojsp.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

import br.com.treinamento.exemplojsp.model.Fornecedor;

public class FornecedorDAO {
	private Connection bd;

	public FornecedorDAO(Connection bd) {
		this.bd = bd;
	}

	public void inserir(Fornecedor fornecedor) throws SQLException {
		String sql = "INSERT INTO fornecedor (codigo,nome,cidade,telefone,email) VALUES (?,?,?,?,?)";
		PreparedStatement comando = (PreparedStatement) bd.prepareStatement(sql);
		comando.setInt(1, fornecedor.getCodigo());
		comando.setString(2, fornecedor.getNome());
		comando.setString(3, fornecedor.getCidade());
		comando.setString(4, fornecedor.getTelefone());
		comando.setString(5, fornecedor.getEmail());
		comando.execute();
	}

	public List<Fornecedor> buscarTodos() throws SQLException {
		String sql = "SELECT * FROM fornecedor ORDER BY codigo";
		PreparedStatement comando = (PreparedStatement) bd.prepareStatement(sql);
		ResultSet cursor = comando.executeQuery();
		List<Fornecedor> listaFornecedores = new ArrayList<Fornecedor>();

		while (cursor.next()) {
			Fornecedor fornecedor = new Fornecedor();
			fornecedor.setCodigo(cursor.getInt("codigo"));
			fornecedor.setNome(cursor.getString("nome"));
			fornecedor.setCidade(cursor.getString("cidade"));
			fornecedor.setTelefone(cursor.getString("telefone"));
			fornecedor.setEmail(cursor.getString("email"));
			listaFornecedores.add(fornecedor);
		}

		return listaFornecedores;
	}
}
