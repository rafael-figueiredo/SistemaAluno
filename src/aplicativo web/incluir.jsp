<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Incluir ALunos</title>
</head>
<body>
	<center>
		<table border="1" width="42%">
			<form action="ServletAluno" method="get">
				<input type="hidden" name="cmd" value="incluir">
				<tr>
					<th colspan="2"><h1>Cadastro de Alunos</h1></th>
				</tr>
				<tr>
					<td>CA:</td>
					<td><input type="text" name="txtCa" size="60" maxlength="60"></td>
				</tr>
				<tr>
					<td>Nome:</td>
					<td><input type="text" name="txtNome" size="60" maxlength="60"></td>
				</tr>
				<tr>
					<td>E-mail:</td>
					<td><input type="text" name="txtEmail" size="60"
						maxlength="60"></td>
				</tr>
				<tr>
					<td>Data de Nascimento:</td>
					<td><input type="text" name="txtData" size="60" maxlength="60"></td>
				</tr>
				<tr>
					<td>Endere�o:</td>
					<td><input type="text" name="txtEndereco" size="60"
						maxlength="60"></td>
				</tr>
				<tr>
					<td>Idade:</td>
					<td><input type="text" name="txtIdade" size="60"
						maxlength="60"></td>
				</tr>
				<tr>			
					<td colspan="2" align="center"><input type="submit" value="Enviar"></td>
				</tr>

			</form>
		</table>
	</center>

</body>
</html>