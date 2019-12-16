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

		try {
			win=null;
		} finally {
			win = "0";
		}
		try {
			lose=null;
		} finally {
			lose = "0";
		}

		try {
			draw=null;
		} finally {
			draw = "0";
		}

		request.setAttribute("win", win);
		request.setAttribute("lose", lose);
		request.setAttribute("draw", draw);

		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/mach_result.jsp");
		rd.forward(request, response);
	}
}
