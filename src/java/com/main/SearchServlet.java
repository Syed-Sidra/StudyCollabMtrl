package com.main;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SearchServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String title = request.getParameter("title");
            String semester = request.getParameter("sem");
            String branch = request.getParameter("branch");

            if ((title == null || title.trim().isEmpty()) && (semester == null || semester.trim().isEmpty()) && (branch == null || branch.trim().isEmpty())) {
                request.setAttribute("message", "Please enter a search term");
                request.getRequestDispatcher("results.jsp").forward(request, response);
                return;
            }

            Connection con = Util.DBUtil.getConnection();
            String sql = "SELECT id, title, semester, subject, file_name,branch FROM upload "
                    + "WHERE LOWER(title) LIKE LOWER(?) OR LOWER(semester) LIKE LOWER(?) OR LOWER(branch) LIKE LOWER(?)";
            PreparedStatement ps = con.prepareStatement(sql);
            String searchTitle = "%" + (title != null ? title : "") + "%";
            String searchSemester = "%" + (semester != null ? semester : "") + "%";
            String searchBranch = "%" + (branch != null ? branch : "") + "%";

            ps.setString(1, searchTitle);
            ps.setString(2, searchSemester);
            ps.setString(3,searchBranch);

            ResultSet rs = ps.executeQuery();
            List<FileModel> results = new ArrayList<>();

            while (rs.next()) {
                results.add(new FileModel(
                        rs.getInt("id"),
                        rs.getString("title"),
                        rs.getString("semester"),
                        rs.getString("subject"),
                        rs.getString("file_name"),
                        rs.getString("branch")
                ));
            }

            // Set attribute for JSP
            request.setAttribute("results", results);

            // Forward to JSP
            RequestDispatcher rd = request.getRequestDispatcher("results.jsp");
            rd.forward(request, response);
        }

    

    
        catch(Exception e){
            e.printStackTrace();
    }
}
// <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
/**
 * Handles the HTTP <code>GET</code> method.
 *
 * @param request servlet request
 * @param response servlet response
 * @throws ServletException if a servlet-specific error occurs
 * @throws IOException if an I/O error occurs
 */
@Override
        protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        

} catch (SQLException ex) {
            Logger.getLogger(SearchServlet.class  

.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
        protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        

} catch (SQLException ex) {
            Logger.getLogger(SearchServlet.class  

.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
        public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
