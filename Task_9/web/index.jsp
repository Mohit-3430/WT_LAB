<%-- 
    Document   : Calculations
    Created on : 29-Nov-2022, 10:09:33 pm
    Author     : mohit
--%>

<%--<%@page contentType="text/html" pageEncoding="UTF-8"%>--%>
<!DOCTYPE html>
<html>
    <body>
    <h1><center>Result for <%=request.getParameter("radio_button")%>
    </center></h1>
    <%
        String num1=request.getParameter("num1"); String num2=request.getParameter("num2");

        int i=Integer.parseInt(num1); int j=Integer.parseInt(num2);

        int k=0;
        String str=request.getParameter("radio_button"); 
        if(str.equals("add")) k=i+j; 
        if(str.equals("sub")) k=i-j; 
        if(str.equals("mul")) k=i*j; 
        if(str.equals("div")) k=i/j;
        
    %>
    Result is: <%=k%>
    </body>
</html>