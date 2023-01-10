package com;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class VerifyCookies extends HttpServlet {

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        String name, value;
        boolean flag = false;
        name = request.getParameter("t1");
        value = request.getParameter("t2");
        Cookie c[] = request.getCookies();
        int i=0;
        for (i = 0; i < c.length; i++) {
            if (name.equals(c[i].getName())) {
                if (value.equals(c[i].getValue())) {
                    flag = true;
                    break;
                }
            }
        }
        out.println("<html><body>");
        if (flag == true) {
            out.println("<h2>Welcome: " + c[i].getName() + "</h2>");
        } else {
            out.println("<h2>You are not an authentic user!</h2>");
            out.println("</body></html>");
        }
    }
}
