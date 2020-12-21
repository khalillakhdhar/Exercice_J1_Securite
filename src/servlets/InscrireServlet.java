package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import controls.Controls;

/**
 * Servlet implementation class InscrireServlet
 */
@WebServlet("/InscrireServlet")
public class InscrireServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InscrireServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		
		String n=request.getParameter("nom");
		String p=request.getParameter("prenom");
		String e=request.getParameter("mail");
		String m=request.getParameter("mdp");
		String rm=request.getParameter("rmdp");
		HttpSession session=request.getSession();
		Controls c=new Controls(n, p, e, m, rm);
		if(!c.conforme())
		{
			
			session.setAttribute("message", "les mots de passe ne se correspondent pas");
			response.sendRedirect("inscription.jsp");
		}
		else if(!c.contenu().equals("correcte"))
		{
			session.setAttribute("message", c.contenu());
			response.sendRedirect("inscription.jsp");
		}
		if(c.conforme()&&(c.contenu().equals("correcte")))
		{
			session.setAttribute("nom",n);
			session.setAttribute("prenom", p);
			session.setAttribute("email", e);
			session.setAttribute("mdp", m);
			response.sendRedirect("index.jsp");
		}
	}

}
