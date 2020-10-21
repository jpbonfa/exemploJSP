package br.com.treinamento.exemplojsp.util;

import java.sql.SQLException;

import com.mysql.jdbc.Connection;

import br.com.treinamento.exemplojsp.dao.FuncionarioDAO;
import br.com.treinamento.exemplojsp.model.Funcionario;

public class TesteFuncionario {

	public static void main(String[] args) {

		Funcionario funcionario = new Funcionario();
		funcionario.setCodigo(1);
		funcionario.setNome("teste");
		funcionario.setSalario(20);

		Connection bd = ConnectionFactory.getConnection();
		FuncionarioDAO dao = new FuncionarioDAO(bd);

		try {
			dao.inserir(funcionario);
			System.out.println("Funcionario salvo com sucesso");
		} catch (SQLException e) {
			System.out.println("Erro ao inserir funcionario");
			e.printStackTrace();
		}
	}
}