package msg;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

;

/**
 * Servlet implementation class NewMsg
 */
@WebServlet("/NewMsg")
public class NewMsg extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NewMsg() {
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
		String title=request.getParameter("title");
		String content=request.getParameter("content");
		HttpSession session=request.getSession();
		ServletContext context=getServletContext();
		ArrayList<Msg> ar=(ArrayList<Msg>)context.getAttribute("ar");
		String name=(String) session.getAttribute("name");
		Msg msg=new Msg();
		msg.setTitle(title);
		msg.setText(content);
		msg.setName(name);
		ar.add(msg);
		response.sendRedirect("Message.jsp");
	}

}
