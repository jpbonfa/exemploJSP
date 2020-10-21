package br.com.treinamento.exemplojsp.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

import br.com.treinamento.exemplojsp.model.Funcionario;

public class FuncionarioDAO {

	private Connection bd;

	public FuncionarioDAO(Connection bd) {
		this.bd = bd;
	}

	public void inserir(Funcionario funcionario) throws SQLException {
		String sql = "INSERT INTO funcionario (codigo,nome,salario) VALUES (?,?,?)";
		PreparedStatement comando = (PreparedStatement) bd.prepareStatement(sql);
		comando.setInt(1, funcionario.getCodigo());
		comando.setString(2, funcionario.getNome());
		comando.setDouble(3, funcionario.getSalario());
		comando.execute();
	}

	public List<Funcionario> buscarTodos() throws SQLException {
		String sql = "SELECT * FROM funcionario ORDER BY codigo";
		PreparedStatement comando = (PreparedStatement) bd.prepareStatement(sql);
		ResultSet cursor = comando.executeQuery();
		List<Funcionario> listaFuncionarios = new ArrayList<Funcionario>();

		while (cursor.next()) {
			Funcionario funcionario = new Funcionario();
			funcionario.setCodigo(cursor.getInt("codigo"));
			funcionario.setNome(cursor.getString("nome"));
			funcionario.setSalario(cursor.getDouble("salario"));
			listaFuncionarios.add(funcionario);
		}

		return listaFuncionarios;
	}

}
