import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class eventdetails extends HttpServlet {

   
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
            SimpleDateFormat sdf=new SimpleDateFormat("HH:mm");
            Date dt= sdf.parse(s5);
            Date dt1= sdf.parse(s6);
            java.sql.Time st=new java.sql.Time(dt.getTime());
                        java.sql.Time et=new java.sql.Time(dt1.getTime());


            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","tiger");
            java.sql.PreparedStatement ps=con.prepareStatement("insert into eventdetails values(?,?,?,?,?,?,?)");
            ps.setString(1,s1);
            ps.setString(2,s2);
            ps.setInt(3,Integer.parseInt(s3));
             ps.setString(4,s4);
             ps.setTime(5,st);
             ps.setTime(6,et);
              ps.setString(7,s7);
            ps.executeUpdate();
            out.println("Success");
        }catch(Exception e){}
    }
}