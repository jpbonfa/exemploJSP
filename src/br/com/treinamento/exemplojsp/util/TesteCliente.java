package br.com.treinamento.exemplojsp.util;

import java.sql.SQLException;

import com.mysql.jdbc.Connection;

import br.com.treinamento.exemplojsp.dao.ClienteDAO;
import br.com.treinamento.exemplojsp.model.Cliente;

public class TesteCliente {

	public static void main(String[] args) {

		Cliente c = new Cliente();
		c.setCodigo(1);
		c.setNome("teste");
		c.setCelular("(11)98711-0380");
		c.setIdade(20);

		Connection bd = ConnectionFactory.getConnection();
		ClienteDAO dao = new ClienteDAO(bd);

		try {
			dao.inserir(c);
			System.out.println("Cliente salvo com sucesso");
		} catch (SQLException e) {
			System.out.println("Erro ao inserir cliente");
			e.printStackTrace();
		}
	}
}
