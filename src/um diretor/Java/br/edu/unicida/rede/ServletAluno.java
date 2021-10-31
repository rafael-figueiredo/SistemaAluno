package br.edu.unicid.web;

import java.io.IOException;
import java.sql.Date;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

import br.edu.unicid.bean.Aluno;
import br.edu.unicid.dao.AlunoDao;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/ServletAluno")
public class ServletAluno extends HttpServlet {

	 private Date strToDate(String data) throws Exception {
	        if (data == null) {
	            return null;
	        }

	        Date dataF = null;
	        try {
	            DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
	            long timestamp = dateFormat.parse(data).getTime();
	            dataF = new Date(timestamp);
	        } catch (ParseException pe) {
	            throw pe;
	        }
	        return dataF;
	    }

	    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
	    throws ServletException, IOException {
	        response.setContentType("text/html;charset=UTF-8");
	        // a variável cmd indica o tipo de ação - incluir, alterar, consulta.....
	        String cmd = request.getParameter("cmd");
	        // cria um objeto dao - CRUD
	        AlunoDao dao;
	        // cria um objeto do tipo aluno
	        Aluno aluno = new Aluno();
	        if (cmd != null) {
	            try {
	                // inicializa os atributos da classe Alunos
	            	aluno.setCaAluno(Integer.parseInt(request.getParameter("txtCa")));  
	            	aluno.setNomeAluno(request.getParameter("txtNome"));
	                aluno.setEmailAluno(request.getParameter("txtEmail"));
	                aluno.setDtaNasc(strToDate(request.getParameter("txtData")));
	                aluno.setEndAluno(request.getParameter("txtEndereco"));
	                aluno.setIdadeAluno(Integer.parseInt(request.getParameter("txtIdade")));
                } catch (Exception ex) {
	                ex.printStackTrace();
	            }
	        }
	        try {
	        	// cria a instancia do objeto dao
	            dao = new AlunoDao();
	            RequestDispatcher rd = null;
	            // lista todos os alunos
	            if (cmd.equalsIgnoreCase("listar")) {
	                List alunosList = dao.todosAlunos();
	                // cria uma sessão para encaminhar a lista para uma JSP
	                request.setAttribute("alunosList", alunosList);
	                // redireciona para a JSP mostraAlunosCads
	                rd = request.getRequestDispatcher("/mostrarAlunoCads.jsp");
	            }
	            
	            // incluir aluno
	            else if (cmd.equalsIgnoreCase("incluir")) {
	                dao.salvar(aluno);
	                rd = request.getRequestDispatcher("ServletAluno?cmd=listar");
	             
	            // consulta aluno para exclusão    
	            } else if (cmd.equalsIgnoreCase("exc")) {
	                aluno = dao.procurarAluno(aluno.getCaAluno());
	                HttpSession session = request.getSession(true);
	                session.setAttribute("aluno", aluno);
	                rd = request.getRequestDispatcher("/formExcAluno.jsp");
	             
	            // exclui aluno
	            } else if (cmd.equalsIgnoreCase("excluir")) {
	                dao.excluir(aluno);
	                rd = request.getRequestDispatcher("ServletAluno?cmd=listar");
	            
	            // consulta aluno para alteração
	            }  else if (cmd.equalsIgnoreCase("atu")) {
	                aluno = dao.procurarAluno(aluno.getCaAluno());
	                HttpSession session = request.getSession(true);
	                session.setAttribute("aluno", aluno);
	                rd = request.getRequestDispatcher("/formAtuAluno.jsp");
	             
	            // consulta aluno
	            } else if (cmd.equalsIgnoreCase("con")) {
	                aluno = dao.procurarAluno(aluno.getCaAluno());
	                HttpSession session = request.getSession(true);
	                session.setAttribute("aluno", aluno);
	                rd = request.getRequestDispatcher("/formConAluno.jsp");
	            
	             // altera aluno    
	            } else if (cmd.equalsIgnoreCase("atualizar")) {
	                dao.atualizar(aluno);
	                rd = request.getRequestDispatcher("ServletAluno?cmd=listar");
	            
	            // direciona para a página principal
	            } else if (cmd.equalsIgnoreCase("principal")) {
	                rd = request.getRequestDispatcher("/index.jsp");
	            }            
	            // executa a ação de direcionar para a página JSP
	            rd.forward(request, response);
	        } catch (Exception e) {
	            e.printStackTrace();
	            throw new ServletException(e);
	        }
	    } 

	    @Override
	    protected void doGet(HttpServletRequest request, HttpServletResponse response)
	    throws ServletException, IOException {
	        processRequest(request, response);
	    } 

	    @Override
	    protected void doPost(HttpServletRequest request, HttpServletResponse response)
	    throws ServletException, IOException {
	        processRequest(request, response);
	    }
}