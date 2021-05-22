package API;

import Service.impl.VideoService;
import Utils.CheckRole;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet(name = "UpdateVideo", urlPatterns = {"/update-video"})
public class UpdateVideo extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();
        int videoid = Integer.parseInt(request.getParameter("videoid"));
        String videoname = request.getParameter("videoname");
        String link = request.getParameter("videolink");
        String thumbnaillink = request.getParameter("thumbnaillink");
        int viewcount = Integer.parseInt(request.getParameter("viewcount"));
        System.out.println(videoid);
        System.out.println(viewcount);
        try{
            List<String> Cookie = CheckRole.getInstance().getCookie(request);
            if(CheckRole.getInstance().byUserNameAndPassword(Cookie.get(0),Cookie.get(1))){
                VideoService vs = new VideoService();
                vs.update(videoname,link,thumbnaillink,viewcount,videoid);
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Cập Nhật Thành Công !');");
                out.println("window.location.href='admin?videopage=1';");
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
