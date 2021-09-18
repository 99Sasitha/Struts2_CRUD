<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%

    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3308/epicstruts2", "root", "");

    try {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        Statement stm = con.createStatement();
        ResultSet rs = stm.executeQuery("select * from register where username='" + username + "' and password=md5('" + password + "') ");
        if (rs.next()) {
            if (rs.getString("userRole").equals("admin")) {

                session = request.getSession();
                session.setAttribute("username", rs.getString("username"));
                session.setAttribute("userRole", rs.getString("userRole"));
                response.sendRedirect("AdminaddEmployee.jsp");
//            request.setAttribute("username",username);
//            RequestDispatcher rd=request.getRequestDispatcher("AdminaddEmployee.jsp");
//            rd.forward(request, response);

            } else if (rs.getString("userRole").equals("user")) {
                session = request.getSession();
                session.setAttribute("username", rs.getString("username"));
                session.setAttribute("userRole", rs.getString("userRole"));
                response.sendRedirect("addEmployee.jsp");
//                request.setAttribute("username", username);
//                RequestDispatcher rd = request.getRequestDispatcher("addEmployee.jsp");
//                rd.forward(request, response);

            }
        } else {
            out.println("Incorrect Details");
        }

    } catch (Exception e) {

        out.println(e);
    }


%>