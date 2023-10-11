package servlet;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/JSPMission/Mission.aaa")
public class Mission extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int x0 = Integer.parseInt(req.getParameter("x0"));
		int t = Integer.parseInt(req.getParameter("t"));
		
		double result = x0 - (0.5 * 9.81 * t*t);
		if(result > 0) {
			req.setAttribute("resultMessage", t+"초 후 위치 : " + result+"m");
		} else {
			req.setAttribute("resultMessage", t+"초 후 지면 도착");
		}
		
		req.getRequestDispatcher("/JSPMission/Mission.jsp").forward(req, resp);
		System.out.println(x0+" "+t);
	}

}
