<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="students.GestionEtudiants"%>
<%@ page import="students.Etudiant"%>
<%@ page import="java.util.ArrayList"%>

<%
ArrayList<Etudiant> mye = GestionEtudiants.getListEtudiants();
%>

<html>
<head>
<meta charset="UTF-8">
<title>Liste des étudiants</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body
	style="background-image: url('WebContent/background.jpg'); background-size: cover; background-repeat: no-repeat; height: 100vh; width: 100vw;">
	<br>
	<br>
	<div class="container"
		style="border-radius: 8px; backdrop-filter: blur(20px); background-color: rgba(255, 255, 255, 0.5); box-shadow: 0 1px 12px rgba(0, 0, 0, 0.25); border: 1px solid rgba(255, 255, 255, 0.3);">
		<button class="btn btn-primary">
			<a href="NewStudent" style="color: white; text-decoration: none;">
				Ajouter </a>
		</button>

		<h2>Liste des étudiants</h2>
		<br>
		<table class="table table-bordered">
			<thead>
				<tr>
					<th>Nom</th>
					<th>Prénom</th>
					<th>CIN</th>
					<th>Age</th>
					<th>Niveau</th>
					<th colspan="2">Actions</th>
				</tr>
			</thead>
			<tbody>
				<%
				int cmp = 0;
				for (Etudiant etudiant : mye) {
				%>
				<tr>
					<td><%=etudiant.getNom()%></td>
					<td><%=etudiant.getPrenom()%></td>
					<td><%=etudiant.getCin()%></td>
					<td><%=etudiant.getAge()%></td>
					<td><%=etudiant.getNiveau()%></td>
					<td><a class="btn btn-primary"
						href="ModifierEtudiant?index=<%=cmp%>&c=<%=etudiant.getCin()%>&p=<%=etudiant.getPrenom()%>&n=<%=etudiant.getNom()%>&nv=<%=etudiant.getNiveau()%>&a=<%=etudiant.getAge()%>">Modifier</a></td>
					<td><a class="btn btn-danger"
						href="SupprimerEtudiant?index=<%=etudiant.getCin()%>">Supprimer</a></td>
				</tr>
				<%
				cmp++;
				}
				%>
			</tbody>
		</table>
	</div>
</body>
</html>
