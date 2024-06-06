/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controlador;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Modelo.ReclamacionesDAO;
import Modelo.mreclamaciones;

/**
 *
 * @author Piero
 */

public class ControladorReclamaciones extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String accion = request.getParameter("accion");
        if (accion != null) {
            if (accion.equals("Enviar")) {
                String nombrerec = request.getParameter("nombre");
                String dnirec = request.getParameter("dni");
                String correorec = request.getParameter("correo");
                String fecharec = request.getParameter("fecha");
                String descripcionrec = request.getParameter("descripcion");

//                request.setAttribute("name",nombre_cliente);
//                request.setAttribute("email",correo_reclamo);
//                request.setAttribute("ID",dni_reclamo);
//                request.setAttribute("fecha_reclamo",fecha_reclamo);
//                request.setAttribute("Asunto",asunto_reclamo);
//                request.setAttribute("ContenidoReclamo",contenido_reclamo);
//
//                request.setAttribute("name","");
//                request.setAttribute("email","");
//                request.setAttribute("ID","");
//                request.setAttribute("fecha_reclamo","");
//                request.setAttribute("Asunto","");
//                request.setAttribute("ContenidoReclamo","");
                mreclamaciones mrec = new mreclamaciones();
                mrec.setNombrerec(nombrerec);
                mrec.setDnirec(dnirec);
                mrec.setCorreorec(correorec);
                mrec.setFecharec(fecharec);
                mrec.setDesripcionrec(descripcionrec);
                
                ReclamacionesDAO reclamacionesDAO = new ReclamacionesDAO();
                String resp = reclamacionesDAO.insert(mrec);

//                String resp = new ClaimsDAO().insert(c);
                request.getRequestDispatcher("libroReclamaciones.jsp").forward(request, response);
            }
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
