package controller;

import java.io.IOException;


import dao.CadastroRepository;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Cadastro;


@WebServlet("/ServletControler")

public class ServletControler extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private CadastroRepository cadastrorepository = new CadastroRepository();
	public ServletControler () {
	
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
	
			String nome = request.getParameter("usuario");
			String tipo = request.getParameter("tipo");
			String endereco = request.getParameter("endereco");
			String matricula = request.getParameter("matricula");
			
			Cadastro cadastro01 = new Cadastro();
			
			cadastro01.setNome(nome);
			cadastro01.setMatricula(matricula);
			cadastro01.setEndereco(endereco);
			cadastro01.setTipo(tipo);
			
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
}
