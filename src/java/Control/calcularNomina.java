/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Control;

import Modelo.Empleado;
import Modelo.Nomina;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author oscar
 */
public class calcularNomina extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet calcularNomina</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet calcularNomina at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        //processRequest(request, response);
//        response.setContentType("text/html;charset=UTF-8");
//        try (PrintWriter out = response.getWriter()) {
//            /* TODO output your page here. You may use following sample code. */
//            out.println("<!DOCTYPE html>");
//            out.println("<html>");
//            out.println("<head>");
//            out.println("<title>Servlet calcularNomina</title>");            
//            out.println("</head>");
//            out.println("<body>");
//            out.println("<h1>Servlet calcularNomina at " + request.getContextPath() + ", from method post</h1>");
//            out.println("</body>");
//            out.println("</html>");
//        }

        String id = request.getParameter("id");
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        int diasTrabajados = Integer.parseInt(request.getParameter("dias"));
        int salarioBase = Integer.parseInt(request.getParameter("salario"));
        switch (salarioBase) {
            case 1:
                salarioBase = 1300000;
                break;
            case 2:
                salarioBase = 1500000;
                break;
            case 3: 
                salarioBase = 2000000;
                break;
            case 4: 
                salarioBase = 2500000;
                break;
            case 5:
                salarioBase = 3000000;
                break;
            default:
                throw new AssertionError();
        }
        Empleado objEmp = new Empleado(
                id,
                nombre,
                apellido,
                salarioBase
        );
        
        Nomina objNomina = new Nomina(objEmp, diasTrabajados);
        objNomina.calcular();
        
        request.setAttribute("nomina", objNomina);
        request.getRequestDispatcher("/nomina.jsp").forward(request, response);
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
