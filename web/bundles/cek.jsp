<%-- 
    Document   : cek
    Created on : Jan 14, 2018, 12:43:05 AM
    Author     : Windows
--%>


 <%
    if ((session.getAttribute("name") == null) || (session.getAttribute("name") == "")) 
    { response.sendRedirect("../Login/Login.jsp");}
    else
    {}
    %>
