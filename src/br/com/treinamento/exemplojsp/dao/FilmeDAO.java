package br.com.treinamento.exemplojsp.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

import br.com.treinamento.exemplojsp.model.Filme;

public class FilmeDAO {

	private Connection bd;

	public FilmeDAO(Connection bd) {
		this.bd = bd;
	}

	public void inserir(Filme filme) throws SQLException {
		String sql = "INSERT INTO filme (codigo,nome,valor) VALUES (?,?,?)";
		PreparedStatement comando = (PreparedStatement) bd.prepareStatement(sql);
		comando.setInt(1, filme.getCodigo());
		comando.setString(2, filme.getNome());
		comando.setDouble(3, filme.getValor());
		comando.execute();
	}

	public List<Filme> buscarTodos() throws SQLException {
		String sql = "SELECT * FROM filme ORDER BY codigo";
		PreparedStatement comando = (PreparedStatement) bd.prepareStatement(sql);
		ResultSet cursor = comando.executeQuery();
		List<Filme> listaFilmes = new ArrayList<Filme>();

		while (cursor.next()) {
			Filme filme = new Filme();
			filme.setCodigo(cursor.getInt("codigo"));
			filme.setNome(cursor.getString("nome"));
			filme.setValor(cursor.getDouble("valor"));
			listaFilmes.add(filme);
		}

		return listaFilmes;
	}
}
