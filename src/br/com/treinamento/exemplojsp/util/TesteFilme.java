package br.com.treinamento.exemplojsp.util;

import java.sql.SQLException;

import com.mysql.jdbc.Connection;

import br.com.treinamento.exemplojsp.dao.FilmeDAO;
import br.com.treinamento.exemplojsp.model.Filme;

public class TesteFilme {

	public static void main(String[] args) {
		Connection bd = ConnectionFactory.getConnection();
		FilmeDAO dao = new FilmeDAO(bd);
		try {
			for (Filme filme : dao.buscarTodos()) {
				System.out.println(filme.getNome());
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
