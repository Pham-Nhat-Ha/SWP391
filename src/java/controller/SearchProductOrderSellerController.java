/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import orderSeller.DAOOrder;
import user.UserDAO;
import user.UserProduct;

/**
 *
 * @author 84348
 */
@WebServlet(name = "SearchProductOrderSellerController", urlPatterns = {"/SearchProductOrderSellerController"})
public class SearchProductOrderSellerController extends HttpServlet {

    private static final String ERROR="createOrderSeller.jsp";
    private static final String SUCCESS="createOrderSeller.jsp";
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String url = ERROR;
        try{
            HttpSession session = request.getSession();
            if(session!=null){
                session.removeAttribute("VIRTUAL_ERROR_PRODUCT");
            }
            String ProductID = request.getParameter("ProductID");
            String Name = request.getParameter("Name");
            DAOOrder dao = new DAOOrder();
            List<UserProduct> listUser = dao.getListShowProSeller(ProductID,Name);
            if(listUser.size() >0){
                request.setAttribute("LIST_PRODUCT_SELLER", listUser);
                url = SUCCESS;
            }else{
                request.setAttribute("ERROR_SEARCH", "No result is found.");
            }
        }catch(Exception e){
            System.out.println("Error at ShowController: " + e.toString());
        }finally{
            request.getRequestDispatcher(url).forward(request, response);
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
