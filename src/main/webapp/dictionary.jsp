<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.io.PrintWriter" %><%--
  Created by IntelliJ IDEA.
  User: nguye
  Date: 5/23/2021
  Time: 9:35 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Dictionary</title>
</head>
<body>
<%!
    Map<String, String> dic = new HashMap<>();
%>

<%
    dic.put("hello", "Xin chào");
    dic.put("how", "Thế nào");
    dic.put("book", "Quyển vở");
    dic.put("computer", "Máy tính");

    String search = request.getParameter("search");

    PrintWriter writer = response.getWriter();

    String result = dic.get(search);
    if (result != null) {
        writer.println("<h1> Word: " + search + "</h1>");
        writer.println("<h1> Result: " + result + "</h1>");
    } else {
        writer.println("<h1>Not found</h1>");
    }
%>

</body>
</html>
