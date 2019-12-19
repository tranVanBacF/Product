/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DAO.CompanyDAO;
import DAO.ProductDAO;
import DAO.StoreDAO;
import Model.Company;
import Model.Product;
import Model.Store;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author bactv
 */
public class CreateProductController extends HttpServlet {

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
            out.println("<title>Servlet CreateProductController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CreateProductController at " + request.getContextPath() + "</h1>");
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
        List<Store> stores = StoreDAO.getAllStore();
        List<Company> companys = CompanyDAO.getAllCompany();
     
        // chuyen du lieu sang
        request.setAttribute("companys", companys);
        request.setAttribute("stores", stores);
        RequestDispatcher rd = request.getRequestDispatcher("view/create-product.jsp");
        rd.forward(request, response);
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
        boolean error = false;

        String name = request.getParameter("productName");
        String quanlity = request.getParameter("quanlity");
        String address = request.getParameter("address");
        String store_name = request.getParameter("store_name");
        String company_id = request.getParameter("company");
        int quanlityNumber = 0;
        try {
            quanlityNumber = Integer.parseInt(quanlity);
        } catch (Exception e) {
        }

        Product p = new Product(0, name, quanlityNumber, address, store_name, Integer.parseInt(company_id));

        if (ProductDAO.insertProduct(p)) {
            request.setAttribute("success", "Insert  success");
            response.sendRedirect("product");
        } else {
            request.setAttribute("errors", "Insert not success");
            RequestDispatcher rd = request.getRequestDispatcher("view/create-product.jsp");
            rd.forward(request, response);
            return;
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
