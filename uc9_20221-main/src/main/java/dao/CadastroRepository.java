package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import conexao.ConexaoBanco;
import model.Cadastro;

public class CadastroRepository {
private Connection conn;
	
	public CadastroRepository() {
		conn = ConexaoBanco.getConnection();
	}

	public CadastroRepository createCadastro (Cadastro cadastro01) throws Exception {
		String sql = "INSERT INTO cadastro (nome, matricula, endereco, tipo) VALUES ('?', '?', '?', '?');";
		PreparedStatement stmt = conn.prepareStatement(sql);
		stmt.setString(1, cadastro01.getNome());
		stmt.setString(2, cadastro01.getMatricula());
		stmt.setString(3, cadastro01.getEndereco());
		stmt.setString(4, cadastro01.getTipo());
		
		stmt.execute();
		
		return null;
	}

}


