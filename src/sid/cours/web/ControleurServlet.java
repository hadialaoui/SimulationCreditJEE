package sid.cours.web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sid.cours.metier.CreditMetier;
import sid.cours.model.CreditModel;

@WebServlet(name="cs" ,urlPatterns={"/controleur","*.php"})
public class ControleurServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private CreditMetier metier;
	
       @Override
	public void init() throws ServletException {
		metier=new CreditMetier();
	}
	
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("mod", new CreditModel());
		request.getRequestDispatcher("VueCredit.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		double montant=Double.parseDouble(request.getParameter("montant"));
		int duree=Integer.parseInt(request.getParameter("duree"));
		double taux=Double.parseDouble(request.getParameter("taux"));
		CreditModel model=new CreditModel();
		model.setMontant(montant);
		model.setDuree(duree);
		model.setTaux(taux);
		double res=metier.calculeMensualite(montant, duree, taux);
		model.setMensualite(res);
		request.setAttribute("mod", model);
		System.out.println("end");
		request.getRequestDispatcher("VueCredit.jsp").forward(request, response);
	}

}
