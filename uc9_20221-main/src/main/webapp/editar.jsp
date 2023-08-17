<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container">
		<h1>Editar cliente</h1>
		<form name="frmClient" action="update">
			<table>
				<tr>
					<th class="th">Id</th>
					<td><input type="text" name="id" readonly class="Caixa1"
						value="<%out.print(request.getAttribute("id"));%>"></td>
				</tr>
				<tr>
					<th class="th">Nome</th>
					<td><input type="text" name="name" class="Caixa1"
						value="<%out.print(request.getAttribute("name"));%>"></td>
				</tr>
				<tr>
					<th>Tipo pessoa</th>
					<td><select name="tipo" class="form-select" aria-label="Default select example">
							<option>Selecione uma opção</option>
							<option name="personType" value="Fisica">Fisica</option>
							<option name="personType" value="Juridica">Juridica</option>
						</select></td>
				</tr>
				<tr>
					<th>Endereço</th>
					<td><input type="text" name="address" class="Caixa1"
						value="<%out.print(request.getAttribute("address"));%>"></td>
				</tr>
				<tr>
					<th>Matricula</th>
					<td><input type="text" name="registration" readonly
						class="Caixa1"
						value="<%out.print(request.getAttribute("registration"));%>"></td>
				</tr>
				<tr>
					<th>Tipo da matricula</th>
					<td><input type="text" name="enrollmentModality"
						class="Caixa1"
						value="<%out.print(request.getAttribute("enrollmentModality"));%>"></td>
				</tr>
			</table>
			<input type="button" value="Salvar" class="botaoNovoCliente"
				onclick="validator()">
		</form>
	</div>
</body>
</html>