package Controller;

import Model.ArtistModel;
import Model.SongModel;
import Model.VideoModel;
import Service.impl.ArtistService;
import Service.impl.SongService;
import Service.impl.VideoService;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "artist", urlPatterns = {"/artist"})
public class GetArtistInfoServlet extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        int artistid = Integer.parseInt(request.getParameter("artistid"));
        int songpage = Integer.parseInt(request.getParameter("songpage"));
        int videopage =Integer.parseInt(request.getParameter("videopage"));
        SongService ss = new SongService();
        VideoService vs = new VideoService();
        ArtistService as = new ArtistService();
        try {
            List<SongModel> smlist = ss.findSongByArtist(artistid, 20*(songpage-1), 20);
            List<VideoModel> vmlist = vs.findVideoByArtist(artistid, 20*(videopage-1), 20);
            int countsong = ss.countSongByArtist(artistid);
            int countvideo = vs.countVideoByArtist(artistid);
            ArtistModel am = as.findArtistByID(artistid);
            if(vmlist!=null){
                request.setAttribute("artistname", am.getArtistname());
                request.setAttribute("artistdescription", am.getArtistdescription());
                request.setAttribute("artistimage",am.getImagelink());
                // <editor-fold defaultstate="collapsed" desc="Song & Video Attribute">
                request.setAttribute("countsong", countsong);
                request.setAttribute("countvideo", countvideo);
                request.setAttribute("Nsongrecord",smlist.size());
                request.setAttribute("Nvideorecord",vmlist.size());
                for(int i=0;i<vmlist.size();i++){
                    request.setAttribute("videoname"+Integer.toString(i), vmlist.get(i).getVideoname());
                    request.setAttribute("videoartist"+Integer.toString(i), am.getArtistname());
                    request.setAttribute("videothumbnail"+Integer.toString(i),vmlist.get(i).getThumbnaillink());
                    request.setAttribute("videoid"+Integer.toString(i),vmlist.get(i).getVideoid());
                }
                for(int i=0;i<smlist.size();i++){
                    request.setAttribute("songname"+Integer.toString(i), smlist.get(i).getSongname());
                    request.setAttribute("songartist"+Integer.toString(i), am.getArtistname());
                    request.setAttribute("songimage"+Integer.toString(i),smlist.get(i).getImagelink());
                    request.setAttribute("songid"+Integer.toString(i),smlist.get(i).getSongid());
                    request.setAttribute("songview"+Integer.toString(i),smlist.get(i).getViewcount());
                }
                // </editor-fold>
                RequestDispatcher dispatch = getServletContext().getRequestDispatcher("/NgheSi.jsp");
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
