package Controller;

import Model.ArtistModel;
import Model.SongModel;
import Service.impl.ArtistService;
import Service.impl.SongService;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "Song", urlPatterns = {"/Song"})
public class SongServlet extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        int page=1;
        if(request.getParameter("page")!=null){
            page = Integer.parseInt(request.getParameter("page"));
        }
        int firstindex = 20*(page-1);
        PrintWriter out = response.getWriter();
        try{
            SongService ss = new SongService();
            List<SongModel> smlist = ss.getAllSong(firstindex, 20);
            int count = ss.countSong();
            ArtistService as = new ArtistService();
            List<ArtistModel> artist = as.findAll();
            if(smlist!=null){
                request.setAttribute("count", count);
                request.setAttribute("Nrecord",smlist.size());
                for(int i=0;i<smlist.size();i++){
                    request.setAttribute("songname"+Integer.toString(i), smlist.get(i).getSongname());
                    ArtistModel am = as.findArtistByID(smlist.get(i).getArtist1id());
                    request.setAttribute("artist"+Integer.toString(i), artist.get(am.getArtistid()-1).getArtistname());
                    request.setAttribute("artist1id"+Integer.toString(i),smlist.get(i).getArtist1id());
                    request.setAttribute("thumbnail"+Integer.toString(i),smlist.get(i).getImagelink());
                    request.setAttribute("songid"+Integer.toString(i),smlist.get(i).getSongid());
                }
                RequestDispatcher dispatch = getServletContext().getRequestDispatcher("/song.jsp");
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
