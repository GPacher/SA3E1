<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CADASTRO</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
</head>
<body>
	<div class="container">
		<form method="post" action="index.jsp">
	  		<div class="mb-3">
	    		<label for="exampleInputEmail1" class="form-label">Cliente</label>
	    		<input type="text" class="form-control" name="nome" aria-describedby="emailHelp">
	  		</div>
	<div class="mb-3">
		
	  		<div class="mb-3">
	    		<label for="exampleInputEmail1" class="form-label">Matricula</label>
	    		<input type="text" class="form-control" name="matricula" aria-describedby="emailHelp">
	  		</div>
	<div class="mb-3">
		
	  		<div class="mb-3">
	    		<label for="exampleInputEmail1" class="form-label">Endereço</label>
	    		<input type="text" class="form-control" name="endereco" aria-describedby="emailHelp">
	  		</div>
	<div class="mb-3">
		<label for="cars">Tipo de Cadastro:</label>
			<select name="tipo" class="form-select" aria-label="Default select example">
							<option name="tipo" value="Fisica">Fisica</option>
							<option name="tipo" value="Juridica">Juridica</option>
						</select>
	  		</div>	  		
	  		<button type="submit" class="btn btn-primary">Cadastrar</button>
	  		<a href="index.jsp" class="btn btn-primary" role="button" aria-disabled="true">Home</a>
		</form>
	<h4> ${mensagem} </h4>
	</div>
	</body>
</html>