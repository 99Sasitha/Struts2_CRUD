<%
session=request.getSession();
session.removeAttribute("username");
response.sendRedirect("loginPage.jsp");
session.invalidate();


%>