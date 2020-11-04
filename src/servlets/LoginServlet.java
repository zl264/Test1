package servlets;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "LoginServlet")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("正在访问servlet(post)");
        String account = request.getParameter("account");
        String password = request.getParameter("password");
        String loginState = "fail";
        String targetUrl = "/jsp/loginFail.jsp";
        if(account.equals(password)){
            loginState = "success";
            targetUrl = "/jsp/loginSuccess.jsp";
            HttpSession session = request.getSession();
            session.setAttribute("account",account);
        }
        request.setAttribute("loginState",loginState);
        ServletContext application = this.getServletContext();
        RequestDispatcher rd = application.getRequestDispatcher(targetUrl);
        rd.forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("正在访问servlet(get)");
        String account = request.getParameter("account");
        String password = request.getParameter("password");
        String loginState = "fail";
        String targetUrl = "/jsp/loginFail.jsp";
        if(account.equals(password)){
            loginState = "success";
            targetUrl = "/jsp/loginSuccess.jsp";
            HttpSession session = request.getSession();
            session.setAttribute("account",account);
        }
        request.setAttribute("loginState",loginState);
        ServletContext application = this.getServletContext();
        RequestDispatcher rd = application.getRequestDispatcher(targetUrl);
        rd.forward(request,response);
    }
}
