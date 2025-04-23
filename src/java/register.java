import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class register extends HttpServlet {

   
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try{
            PrintWriter out = response.getWriter();
            String s1=request.getParameter("fullname");
            String s2=request.getParameter("username");
            String s3=request.getParameter("password");
            String s4=request.getParameter("email");
            String s5=request.getParameter("phoneno");
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "tiger");
            java.sql.PreparedStatement ps=con.prepareStatement("insert into Register values(?,?,?,?,?)");
            ps.setString(1,s1);
            ps.setString(2,s2);
            ps.setString(3,s3);
            ps.setString(4,s4);
             ps.setLong(5,Long.parseLong(s5));
            ps.executeUpdate();
            System.out.println("Success");
            RequestDispatcher rd=request.getRequestDispatcher("Createeven.jsp");
            rd.forward(request,response);
        }catch(Exception e){}
    }
    }