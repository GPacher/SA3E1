package conexao;

import java.sql.Connection;

import java.sql.DriverManager;

public class ConexaoBanco {
	private static String banco = "jdbc:mysql://localhost:3306/uc9_desenvolvimento";
	private static String usuario = "newuseruc";
	private static String senha = "Uc9!2023";
	private static Connection conn = null;
	
	public static Connection getConnection() {
		return conn;
	}
	
	static {
		conectar();
	}
	
	public ConexaoBanco() {
		conectar();
	}
	
	private static void conectar() {
		try {
			if (conn == null) {
				Class.forName("com.mysql.cj.jdbc.Driver");
				conn = DriverManager.getConnection(banco, usuario, senha);
				conn.setAutoCommit(false);
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
}
