package Controller;

import Model.SongModel;
import Service.impl.SongService;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.parsers.SAXParserFactory;

@WebServlet(name = "SearchServlet", urlPatterns = {"/SearchServlet"})
public class SearchServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    SAXParserFactory factory;

    public SearchServlet() {
        super();
    }
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/xml;charset=UTF-8");
        String query = request.getParameter("query");
        PrintWriter out = response.getWriter();
        SongService ss = new SongService();
        try{
            out.append("<?xml version=\"1.0\" encoding=\"UTF-8\"?>");
            List<SongModel> ls = ss.find3MatchedSong(query);
            if(ls!=null){
                out.append("<Songs>");
                for(int i = 0;i < ls.size();i++){
                    out.append("<Song>");
                    out.append("<songname>").append(ls.get(i).getSongname()).append("</songname>");
                    out.append("<songid>").append(Integer.toString(ls.get(i).getSongid())).append("</songid>");
                    out.append("</Song>");
                }
                out.append("</Songs>");
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
