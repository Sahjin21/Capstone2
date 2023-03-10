/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import Business.*;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author lalu
 */
@WebServlet(name = "patientMakeAppointmentServlet", urlPatterns = {"/patientMakeAppointmentServlet"})
public class patientMakeAppointmentServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        DbAccess d1 = new DbAccess();
        d1 = (DbAccess)request.getSession().getAttribute("d1");
        String pid = d1.p1.getPatientID();
        String pfname = d1.p1.getPatientFirstName();
        String plname = d1.p1.getPatientLastName();
        String pname = pfname + " " + plname;
        d1.selectChiropractor(request.getParameter("chiro"));
        String cid = request.getParameter("chiro");
        String cfname = d1.c1.getChiropractorFirstName();
        String clname = d1.c1.getChiropractorLastName();
        String cname = cfname + " " + clname;
        String apnum = request.getParameter("apnum");
        String month = request.getParameter("month");
        String day = request.getParameter("day");
        String year = request.getParameter("year");
        
        d1.insertAppointment(apnum, year, month, day,pid, pname, cid, cname);
        
        HttpSession session;
        session = request.getSession();
        
        session.setAttribute("d1", d1);
        session.setAttribute("id", d1.p1.getPatientID());
        
        RequestDispatcher rd = request.getRequestDispatcher("patientViewAppointment.jsp");
        rd.forward(request, response);
        
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
        processRequest(request, response);
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
        processRequest(request, response);
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
