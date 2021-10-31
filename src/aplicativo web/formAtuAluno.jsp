<%@page contentType="text/html"%>
<%@page pageEncoding="ISO-8859-1"%>
<%@page import="java.text.SimpleDateFormat"%>

<html>
    <head>
        <title>Atualizar Alunos</title>
    </head>
    <body>
        <h3 align="center">Atualizar Alunos</h3>
        <jsp:useBean id="aluno" scope="session" class="br.edu.unicid.bean.Aluno" />
        <% SimpleDateFormat data = new SimpleDateFormat("dd/MM/yyyy"); %>

        <form action="ServletAluno?cmd=atualizar" method="post">
            <center>
            <table>
                <tr>
                    <td>CA:</td>
                    <td>
                        <input type="text" maxlength="60"  size = "60" name="txtCa" 
                            value="<%= aluno.getCaAluno() %>" readonly="readonly" />
                    </td>
                </tr>
                <tr>
                    <td>Nome:</td>
                    <td>
                        <input type="text" maxlength="60"  size = "60" name="txtNome" 
                        value="<%= aluno.getNomeAluno() %>" />
                    </td>
                </tr>
                <tr>
                    <td>E-mail:</td>
                    <td>
                        <input type="text" maxlength="60"  size = "60" name="txtEmail" 
                        value="<%= aluno.getEmailAluno() %>"  />
                    </td>
                </tr>
                <tr>
                    <td>Nascimento (dd/mm/aaaa):</td>
                    <td>
                        <input type="text" maxlength="60"  size = "60" name="txtData"
                            value="<%=data.format(aluno.getDtaNasc())%>" />
                    </td>
                </tr>
                <tr>
                    <td>Endereço:</td>
                    <td>
                        <input type="text" maxlength="60"  size = "60" name="txtEndereco" 
                        value="<%= aluno.getEndAluno() %>" />
                    </td>
                </tr>
                <tr>
                    <td>Idade:</td>
                    <td>
                        <input type="text" maxlength="60"  size = "60" name="txtIdade" 
                        value="<%= aluno.getIdadeAluno() %>" />
                    </td>
                </tr>
                
                <tr>
                    <th colspan="2">
                        <input type="submit" name="btnAlterar" value="Confirma Atualização" />
                    </th>
                </tr>		
            </table>
            </center>
        </form>
    </body>
</html>