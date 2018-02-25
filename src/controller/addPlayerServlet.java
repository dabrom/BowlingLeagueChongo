package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Player;
import model.Team;

/**
 * Servlet implementation class preparePlayerInsertServlet
 */
@WebServlet("/addPlayerServlet")
public class addPlayerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addPlayerServlet() {
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
		String playerFirstName = request.getParameter("playerFirstName");
		String playerLastName = request.getParameter("playerLastName");
		String phoneNumber = request.getParameter("phoneNumber");
		String screenName = request.getParameter("screenName");
		int teamID = Integer.parseInt(request.getParameter("teamID"));
				
		Team team = new Team();
		TeamHelper teamDao = new TeamHelper();
		team = teamDao.searchForTeamById(teamID);
		
		Player player = new Player(playerFirstName, playerLastName, phoneNumber, screenName, team);
		PlayerHelper playerDao = new PlayerHelper();
		playerDao.insert(player);
		
		getServletContext().getRequestDispatcher("/addPlayer.jsp").forward(request, response);
	}

}
