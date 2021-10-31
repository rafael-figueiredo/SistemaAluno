<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Consultar Alunos</title>
</head>
<body>
   <center>
        <table border="1">
            <form action="ServletAluno?cmd=con" method="post">
            <tbody>
                <tr>
                    <th colspan="2"><h2>Consultar Alunos</h2></th>
                </tr>
                <tr>
                    <td>CA do Aluno:</td>
                    <td>
                        <input type="text" name="txtCa" size="10" maxlenght="10" />
                    </td>
                </tr>

                <tr>
                    <td colspan="2" align="center"><input type="submit" value="Enviar"></td>
                </tr>
            </tbody>
           </form>
        </table>
    </center>

</body>
</html>
