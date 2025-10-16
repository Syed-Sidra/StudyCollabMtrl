package com.main;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;

public class ChangePasswordServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        try {
            HttpSession session = request.getSession(false);
            if(session == null || session.getAttribute("username") == null) {
                out.println("<script>alert('Please login first!'); window.location='login.jsp';</script>");
                return;
            }

            String username = (String) session.getAttribute("username");
            String oldPassword = request.getParameter("oldpass");
            String newPassword = request.getParameter("newpass");
            String confirmPassword = request.getParameter("confirm");

            if(!newPassword.equals(confirmPassword)) {
                out.println("<script>alert('New and Confirm password do not match!'); history.back();</script>");
                return;
            }

            Connection con = Util.DBUtil.getConnection();

            String sql = "SELECT * FROM signup WHERE username=? AND pass=?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, oldPassword);
            ResultSet rs = ps.executeQuery();

            if(rs.next()) {
                String updateSql = "UPDATE signup SET pass=? WHERE username=?";
                PreparedStatement ps2 = con.prepareStatement(updateSql);
                ps2.setString(1, newPassword);
                ps2.setString(2, username);

                int rows = ps2.executeUpdate();
                if(rows > 0) {
                    out.println("<script>alert('Password updated successfully!'); window.location='UserHome.jsp';</script>");
                } else {
                    out.println("<script>alert('Something went wrong!'); history.back();</script>");
                }
            } else {
                out.println("<script>alert('Old password is incorrect!'); history.back();</script>");
            }

            con.close();
        } catch(Exception e) {
            e.printStackTrace();
            out.println("<script>alert('Error: " + e.getMessage() + "'); history.back();</script>");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
}
