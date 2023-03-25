
package control;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import students.Etudiant;
import students.GestionEtudiants;

public class ModifierEtudiant extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private int index;

	public void init() throws ServletException {
		super.init();
	}

	protected void doGet(final HttpServletRequest request, final HttpServletResponse response)
			throws ServletException, IOException {
		this.index = Integer.valueOf(request.getParameter("index"));
		request.setAttribute("c", request.getParameter("c"));
		request.setAttribute("p", request.getParameter("p"));
		request.setAttribute("n", request.getParameter("n"));
		request.setAttribute("a", request.getParameter("a"));

		this.getServletContext().getRequestDispatcher("/WEB-INF/modifierEtudiant.jsp").forward(request, response);
	}

	protected void doPost(final HttpServletRequest request, final HttpServletResponse response)
			throws ServletException, IOException {
		GestionEtudiants.modify(this.index,
				new Etudiant(request.getParameter("cin"), request.getParameter("nom"), request.getParameter("prenom"),
						request.getParameter("niveau"), (int) Integer.valueOf(request.getParameter("age"))));
		this.getServletContext().getRequestDispatcher("/Affichage.jsp").forward((ServletRequest) request,
				(ServletResponse) response);
	}
}