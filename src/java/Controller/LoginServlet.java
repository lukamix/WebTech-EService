package Controller;

import Model.UserInfoModel;
import Model.UserModel;
import Service.impl.UserInfoService;
import Service.impl.UserService;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "Home", urlPatterns = {"/Home"})
public class LoginServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try{
            String username = request.getParameter("username");
            String password = request.getParameter("userpassword");
            
            deleteCookie(request,response);
            Cookie userName = new Cookie("username", 
                username);
            Cookie passWord = new Cookie("password", 
                password);
            
            userName.setMaxAge(60 * 60 * 24);
            passWord.setMaxAge(60 * 60 * 24);
            
            response.addCookie(userName);
            response.addCookie(passWord);
            
            UserService newuserService = new UserService();
            UserInfoService newuserInfoService = new UserInfoService();
            UserModel userModel = newuserService.findByUserNameAndPassword(username, password);
            if(userModel!=null){
                UserInfoModel tmp = newuserInfoService.findUserInfoById(userModel.getUserid());
                HttpSession session = request.getSession();
                session.setAttribute("username",tmp.getLastname());
                
                Cookie lastName = new Cookie("lastname",tmp.getLastname());
                lastName.setMaxAge(60 * 60 * 24);
                response.addCookie(lastName);
                
                RequestDispatcher dispatch = getServletContext().getRequestDispatcher("/home");
                dispatch.forward(request,response);
            }
            else{
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Đăng Nhập Không Thành Công !');");
                out.println("location='signin_signup.jsp';");
                out.println("</script>");
            }
        } finally{
            out.close();
        }
    }
    private void deleteCookie(HttpServletRequest request, HttpServletResponse response){
        Cookie cookie = null;
        Cookie[] cookies = null;
        cookies = request.getCookies();
        if (cookies != null) {
            for (int i = 0; i < cookies.length; i++) {
                cookie = cookies[i];
                if ((cookie.getName()).compareTo("username") == 0 ||(cookie.getName().compareTo("password"))==0
                        ||cookie.getName().compareTo("lastname")==0) {
                    // delete cookie
                    cookie.setMaxAge(0);
                    response.addCookie(cookie);
                }
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
