package msg;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;  
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
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
		String number=request.getParameter("number");
		String password=request.getParameter("password");
		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		PrintWriter out=response.getWriter();
		ServletContext context=getServletContext();
		 ArrayList<Msg> ar=(ArrayList<Msg>)context.getAttribute("ar");
		if(ar==null) {
		 ar=new ArrayList<Msg>(3);
		}
		context.setAttribute("ar", ar);
		if(number.equals(password)) {
			HttpSession session=request.getSession(true);
			String name=number;
			session.setAttribute("name", name);
			out.print("<script>");
			out.println("alert('µÇÂ½³É¹¦£¡');");
			out.println("window.location.href='http://localhost:8080/Liuyanben/Message.jsp'</script>");
			out.close();
		}else {
			out.print("<script>");
			out.println("alert('µÇÂ½Ê§°Ü£¬ÇëÖØÐÂµÇÂ¼£¡');");
			out.println("window.location.href='http://localhost:8080/Liuyanben/Login.jsp'</script>");
			out.close();
		}
			
	}

}
