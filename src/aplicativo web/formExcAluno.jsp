<%@page contentType="text/html"%>
<%@page pageEncoding="ISO-8859-1"%>
<%@page import="java.text.SimpleDateFormat"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<link rel="stylesheet" type="text/css" href="estilo.css" />
<title>Excluir Aluno</title>
</head>
<body>
	<h2 align="center">Exclusão do Aluno</h2>
	<jsp:useBean id="aluno" scope="session"
		class="br.edu.unicid.bean.Aluno" />
	<%
	SimpleDateFormat data = new SimpleDateFormat("dd/MM/yyyy");
	%>

	<form action="ServletAluno?cmd=excluir" method="post">
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
					<th colspan="2"><input type="submit" maxlength="60" size="60"
						name="btnExcluir" value="Confirma Exclusão" /></th>
				</tr>
			</table>
		</center>
	</form>
</body>
</html>