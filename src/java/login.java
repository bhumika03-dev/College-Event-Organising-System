import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.Connection;
import java.sql.DriverManager;
import javax.servlet.RequestDispatcher;

public class login extends HttpServlet {

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try  {
            PrintWriter out=response.getWriter();
            String s1=request.getParameter("username");
            String s2=request.getParameter("password");
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "tiger");
            PreparedStatement ps=con.prepareStatement("select * from register where username=? and password=?");
            ps.setString(1,s1);
            ps.setString(2,s2);
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
                String pword=rs.getString(4);
            String un=rs.getString(2);
            if(un.equalsIgnoreCase(s1) && pword.equalsIgnoreCase(s2)){
            RequestDispatcher rd=request.getRequestDispatcher("Createeven.jsp");
            rd.forward(request,response);
            }
            else {
            out.print("<h1>Invalid username or password</h1>");
            }
            }
            RequestDispatcher rd=request.getRequestDispatcher("Createeven.jsp");
            rd.forward(request,response);
        }catch(Exception e){
        System.out.print(e);
      }}
}
