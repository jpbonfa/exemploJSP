package br.com.treinamento.exemplojsp.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

import br.com.treinamento.exemplojsp.model.Cliente;
import br.com.treinamento.exemplojsp.model.Filme;

public class ClienteDAO {

	private Connection bd;

	public ClienteDAO(Connection bd) {
		this.bd = bd;
	}

	public void inserir(Cliente cliente) throws SQLException {
		String sql = "INSERT INTO cliente (codigo,nome,celular,idade) VALUES (?,?,?,?)";
		PreparedStatement comando = (PreparedStatement) bd.prepareStatement(sql);
		comando.setInt(1, cliente.getCodigo());
		comando.setString(2, cliente.getNome());
		comando.setString(3, cliente.getCelular());
		comando.setInt(4, cliente.getIdade());
		comando.execute();
	}

	public List<Cliente> buscarTodos() throws SQLException {
		String sql = "SELECT * FROM cliente ORDER BY codigo";
		PreparedStatement comando = (PreparedStatement) bd.prepareStatement(sql);
		ResultSet cursor = comando.executeQuery();
		List<Cliente> listaClientes = new ArrayList<Cliente>();

		while (cursor.next()) {
			Cliente cliente = new Cliente();
			cliente.setCodigo(cursor.getInt("codigo"));
			cliente.setNome(cursor.getString("nome"));
			cliente.setCelular(cursor.getString("celular"));
			cliente.setIdade(cursor.getInt("idade"));
			listaClientes.add(cliente);
		}

		return listaClientes;
	}
}
