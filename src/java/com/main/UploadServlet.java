package com.main;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.io.*;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.file.Paths;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.mail.MessagingException;
import javax.servlet.http.Part;
import javax.servlet.ServletException;
import javax.servlet.annotation.*;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author hp
 */
public class UploadServlet extends HttpServlet {

    private String extractFileName(Part part) {
        String contentDisp = part.getHeader("content-disposition");
        for (String cd : contentDisp.split(";")) {
            if (cd.trim().startsWith("filename")) {
                return cd.substring(cd.indexOf("=") + 2, cd.length() - 1);
            }
        }
        return null;
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, MessagingException {
        response.setContentType("text/html;charset=UTF-8");

        String userName = (String) request.getParameter("name");
        String title = (String) request.getParameter("title");
        String semester = (String) request.getParameter("sem");
        String subject = (String) request.getParameter("subject");
        String branch = (String) request.getParameter("branch");

        Part filePart = (Part) request.getPart("file");
        String fileName = extractFileName(filePart);

        // Get file as bytes (for BYTEA column)
        InputStream inputStream = filePart.getInputStream();

        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            Connection con = Util.DBUtil.getConnection();

            String psql = "INSERT INTO upload(user_name,title,subject,file_name,file_data,semester,branch) VALUES (?,?,?,?,?,?,?)";
            PreparedStatement ps = con.prepareStatement(psql);

            ps.setString(1, userName);
            ps.setString(2, title);
            ps.setString(3, subject);
            ps.setString(4, fileName);

            // File ko bytes me convert karke save karna
            byte[] fileBytes = new byte[(int) filePart.getSize()];
            inputStream.read(fileBytes);
            inputStream.close();
            ps.setBytes(5, fileBytes);

            ps.setString(6, semester);
            ps.setString(7,branch);

            int i = ps.executeUpdate();

            if ((i > 0)) {
                out.println("File uploaded and saved successfully");
            } else {
                out.println("Upload failed");
            }
            con.close();
        } catch (Exception e) {
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
        } catch (MessagingException ex) {
            Logger.getLogger(UploadServlet.class.getName()).log(Level.SEVERE, null, ex);
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
        } catch (MessagingException ex) {
            Logger.getLogger(UploadServlet.class.getName()).log(Level.SEVERE, null, ex);
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
