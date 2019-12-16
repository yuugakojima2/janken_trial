package game;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MachServlet
 */
@WebServlet("/mach")
public class MachServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public MachServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");

		String a = request.getParameter("hand");
		int myHand = Integer.parseInt(a);
		request.setAttribute("myHand", myHand);

		int comHand = (int) (Math.random() * 3);

		request.setAttribute("comHand", comHand);

		String win = (String) request.getAttribute("win");
		String lose = (String) request.getAttribute("lose");
		String draw = (String) request.getAttribute("draw");


		int o;
		int p;
		int q;

		try {
			 o = Integer.parseInt(win);

		} catch (NumberFormatException e) {
			 o = 0;

		}

		try {
			 p = Integer.parseInt(lose);

		} catch (NumberFormatException e) {
			 p = 0;

		}

		try {
		 q = Integer.parseInt(draw);

		} catch (NumberFormatException e) {
		 q = 0;

		}
		request.setAttribute("o", o);
		request.setAttribute("p", p);
		request.setAttribute("q", q);

		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/mach_result.jsp");
		rd.forward(request, response);
	}
}
