package control;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import students.GestionEtudiants;

public class InsertionEtudiant extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public InsertionEtudiant() {
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		GestionEtudiants.add(request.getParameter("cin"), request.getParameter("nom"), request.getParameter("prenom"),
				request.getParameter("niveau"), Integer.valueOf(request.getParameter("age")));
		this.getServletContext().getRequestDispatcher("/Affichage.jsp").forward(request, response);
	}

}
