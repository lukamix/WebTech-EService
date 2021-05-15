package Controller;

import Model.UserInfoModel;
import Service.impl.UserInfoService;
import Service.impl.UserService;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "SignUpServlet", urlPatterns = {"/SignUpServlet"})
public class SignUpServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try{
            String txtusername = request.getParameter("txtusername");
            String txtpassword = request.getParameter("txtpassword");
            String txtemail = request.getParameter("txtemail");
            String txtlastname = request.getParameter("txtlastname");
            UserService newUser = new UserService();
            UserInfoService newUserinfo = new UserInfoService();
            if(newUser.findByUserName(txtusername)==null){
                newUserinfo.InsertUserInfo(txtlastname, txtemail);
                UserInfoModel tmp = newUserinfo.findUserInfoByEmail(txtemail);
                Long r2 = newUser.InsertUser(txtusername, txtpassword,tmp.getUserid());
                if(r2!=null){
                    System.out.println("Sign Up Complete !");
                    HttpSession session = request.getSession();
                    session.setAttribute("username",tmp.getLastname());
                    RequestDispatcher dispatch = getServletContext().getRequestDispatcher("/GetFavouriteArtistServlet");
                    dispatch.forward(request,response);
                }
            }else{
                RequestDispatcher dispatch = getServletContext().getRequestDispatcher("/signin_signup.jsp");
                dispatch.forward(request,response);
            }
        }   
        finally{
            out.close();
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
