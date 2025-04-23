<%@page import="java.sql.DriverManager"%>
		<%@page import="java.sql.ResultSet"%>
		<%@page import="java.sql.PreparedStatement"%>
		<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Event Management</title>
    <link rel="stylesheet" href="css/event.css">
    <link rel="stylesheet" href="fontawesome/css/all.css">
</head>
<body>
    <div class="container">
            <div class="Vote">
                <h2>Our Participant</h2>
                <table>
                    <tr>
                        <th>sl no.</th>
                        <th>Full Name</th>
                        <th>Email</th>
                        <th>stream</th>
                        <th>year</th>
                        <th>Category</th>
                         <th>PerformanceName</th>
                        <th>Phone</th>
                    </tr>
                    <%
		try  {
                int i=0;
            String s1=request.getParameter("t1");
            String s2=request.getParameter("t2");
            String s3=request.getParameter("t3");
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "tiger");
            PreparedStatement ps=con.prepareStatement("select * from eventregister");
	     ResultSet rs=ps.executeQuery();
        	while(rs.next())
                {
		%>
                    <tr>
                        <td><%=++i%></td>
                        <td><%=rs.getString(1)%></td>
                        <td><%=rs.getString(2)%></td>
                        <td><%=rs.getString(3)%></td>
                        <td><%=rs.getString(4)%></td>
			<td><%=rs.getString(5)%></td>
                        <td><%=rs.getString(6)%></td>
 			<td><%=(String)String.valueOf(rs.getLong(7))%></td>
                     
                    </tr>
                    <%
                        }
} catch (Exception e) {
                out.println("<p>Error: " + e.getMessage() + "</p>");
            } 
                    
                    %>
              
		
                </table>
                    
                
            </div>
        </div>
    </form>
</body>
</html>