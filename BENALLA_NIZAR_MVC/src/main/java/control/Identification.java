package control;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class Identification extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(final HttpServletRequest request, final HttpServletResponse response)
			throws ServletException, IOException {
	}

	protected void doPost(final HttpServletRequest request, final HttpServletResponse response)
			throws ServletException, IOException {
		final String user = request.getParameter("login");
		final String mdp = request.getParameter("pass");
		response.setContentType("text/html");
		if (user.equals("admin") && mdp.equals("admin")) {
			this.getServletContext().getRequestDispatcher("/WEB-INF/insertionEtudiant.html")
					.forward((ServletRequest) request, (ServletResponse) response);
		} else {
			this.getServletContext().getRequestDispatcher("/WEB-INF/echec.jsp").forward((ServletRequest) request,
					(ServletResponse) response);
		}
	}
}