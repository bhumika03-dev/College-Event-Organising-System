import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class eventregister extends HttpServlet {

   
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try{
            PrintWriter out = response.getWriter();
            String s1=request.getParameter("t1");
            String s2=request.getParameter("t2");
            String s3=request.getParameter("t3");
            String s4=request.getParameter("t4");
            String s5=request.getParameter("t5");
            String s6=request.getParameter("t6");
            String s7=request.getParameter("t7");

            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "tiger");
            java.sql.PreparedStatement ps=con.prepareStatement("insert into eventregister values(?,?,?,?,?,?,?)");
            ps.setString(1,s1);
            ps.setString(2,s2);
            ps.setString(3,s3);
            ps.setString(4,s4);
            ps.setString(5,s5);
            ps.setString(6,s6);
            ps.setString(7,s7);
            ps.executeUpdate();
            out.println("Success");
            RequestDispatcher rd=request.getRequestDispatcher("thankyou.jsp");
            rd.forward(request,response);
        }catch(Exception e){}
    }
    }