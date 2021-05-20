package API;

import Service.impl.SongService;
import Utils.CheckRole;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "UpdateSong", urlPatterns = {"/update-song"})
public class UpdateSong extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        int songid = Integer.parseInt(request.getParameter("songid").toString());
        String songname = request.getParameter("songname");
        String link = request.getParameter("link");
        int artist1id = Integer.parseInt(request.getParameter("artist1id"));
        String Quality = request.getParameter("Quality");
        try{
            List<String> Cookie = CheckRole.getInstance().getCookie(request);
            if(CheckRole.getInstance().byUserNameAndPassword(Cookie.get(0),Cookie.get(1))){
                SongService ss = new SongService();
                ss.update(songname, link, artist1id,Quality,songid);
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Cập Nhật Thành Công !');");
                out.println("window.location.href='admin?songpage=1';");
                out.println("</script>");
            }
            else{
                response.sendError(HttpServletResponse.SC_NOT_FOUND);
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
