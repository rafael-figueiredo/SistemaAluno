<%@page contentType="text/html"%>
<%@page pageEncoding="ISO-8859-1"%>
<%@page import="java.text.SimpleDateFormat"%>
<html>
<head>
<link rel="stylesheet" type="text/css" href="estilo.css" />
<title>Consulta Alunos</title>
</head>
<body>
	<h2 align="center">Consulta de Alunos</h2>
	<jsp:useBean id="aluno" scope="session"
		class="br.edu.unicid.bean.Aluno" />
	<%
	SimpleDateFormat data = new SimpleDateFormat("dd/MM/yyyy");
	%>
	<form>
		<center>
			<table>
				<tr>
					<td>CA:</td>
					<td><input type="text" maxlength="60" size="60" name="txtCa"
						value="<%=aluno.getCaAluno()%>" readonly="readonly" /></td>
				</tr>
				<tr>
					<td>Nome:</td>
					<td><input type="text" maxlength="60" size="60" name="txtNome"
						value="<%=aluno.getNomeAluno()%>" readonly="readonly" /></td>
				</tr>
				<tr>
					<td>E-mail:</td>
					<td><input type="text" maxlength="60" size="60"
						name="txtEmail" value="<%=aluno.getEmailAluno()%>"
						readonly="readonly" /></td>
				</tr>
				<tr>
					<td>Nascimento (dd/mm/aaaa):</td>
					<td><input type="text" maxlength="60" size="60" name="txtData"
						value="<%=data.format(aluno.getDtaNasc())%>" readonly="readonly" />
					</td>
				</tr>
				<tr>
					<td>Endereço:</td>
					<td><input type="text" maxlength="60" size="60"
						name="txtEndereco" value="<%=aluno.getEndAluno()%>"
						readonly="readonly" /></td>
				</tr>
				<tr>
					<td>Idade:</td>
					<td><input type="text" maxlength="60" size="60"
						name="txtIdade" value="<%=aluno.getIdadeAluno()%>"
						readonly="readonly" /></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><a href="index.jsp">Página
							Principal</a></td>
				</tr>
			</table>
		</center>
	</form>
</body>
</html>