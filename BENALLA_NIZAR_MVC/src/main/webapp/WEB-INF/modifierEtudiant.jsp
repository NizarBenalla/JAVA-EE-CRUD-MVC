<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Formulaire de modification d'étudiant</title>
<!-- Bootstrap CSS -->

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<style>
body {
	background-color: #f8f9fa;
	font-family: Arial, sans-serif;
	font-size: 18px;
	line-height: 1.5;
	margin: 0;
	padding: 0;
	background-image: url('WebContent/background.jpg');
	background-size: cover;
	background-repeat: no-repeat;
	height: 100vh;
	width: 100vw;
	background-size: cover;
	background-repeat: no-repeat;
	height: 100vh;
}

.container {
	background-color: #fff;
	border: 1px solid #ccc;
	border-radius: 5px;
	box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
	margin: 24px auto;
	padding: 24px;
	max-width: 600px;
}

h4 {
	color: #007bff;
	font-size: 24px;
	margin-bottom: 24px;
	text-align: center;
}

label {
	font-weight: bold;
	margin-bottom: 8px;
	display: block;
}

input[type="text"], select {
	border: 1px solid #ccc;
	border-radius: 5px;
	padding: 8px;
	margin-bottom: 16px;
	width: 100%;
}

input[type="submit"] {
	background-color: #007bff;
	border: none;
	border-radius: 5px;
	color: #fff;
	cursor: pointer;
	padding: 8px 16px;
}

input[type="submit"]:hover {
	background-color: #0069d9;
}
</style>
</head>
<body>
	<section class="h-90">
		<div class="container h-90"
			style="border-radius: 8px; backdrop-filter: blur(20px); background-color: rgba(255, 255, 255, 0.5); box-shadow: 0 1px 12px rgba(0, 0, 0, 0.25); border: 1px solid rgba(255, 255, 255, 0.3);">

			<h4>Formulaire de modification d'étudiant</h4>
			<form method="post" action="ModifierEtudiant">
				<div class="form-group">
					<label for="cin" >CIN :</label> <input value = <%=request.getAttribute("c")%> type="text" name="cin"
						id="cin" required>
				</div>
				<div class="form-group">
					<label for="nom">Nom :</label> <input value=<%= request.getAttribute("n")%> type="text" name="nom"
						id="nom" required>
				</div>
				<div class="form-group">
					<label for="prenom" >Prénom :</label> <input value=<%= request.getAttribute("p") %>  type="text"
						name="prenom" id="prenom" required>
				</div>
				<div class="form-group">
					<label for="age">Âge :</label> <input type="text" name="age"
						id="age"   value=<%= request.getAttribute("a") %>  required>
				</div>
				<div class="form-group">
					<label for="niveau">Niveau :</label> <select name="niveau"
						id="niveau">
						<option value="L1">L1</option>
						<option value="L2">L2</option>
						<option value="L3">L3</option>
						<option value="M1" selected>M1</option>
						<option value="M2">M2</option>
					</select>
				</div>
				<div class="form-group">
					<input type="submit" value="Modifier">
				</div>
			</form>
		</div>
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/XvoPhY8tu6NXaI+"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>
</html>