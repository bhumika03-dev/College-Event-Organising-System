import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;

public class adminlogin extends HttpServlet {

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try  {
            PrintWriter out=response.getWriter();
            String s1=request.getParameter("username");
            String s2=request.getParameter("password");
           
            if(s1.equalsIgnoreCase("Admin") && s2.equalsIgnoreCase("admin")){
            RequestDispatcher rd=request.getRequestDispatcher("dashboard.jsp");
            rd.forward(request,response);
            }
            else {
            out.print("<h1>Invalid username or password</h1>");
            }
            
        }catch(Exception e){
        System.out.print(e);
      }}
}
