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

@WebServlet(name = "GetSongServlet", urlPatterns = {"/GetSongServlet"})
public class GetSongServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try{
            SongService songService = new SongService();
            List<SongModel> songDAO = songService.find10NewSong();
            List<SongModel> newAddSongDAO = songService.find10AddSong();
            List<SongModel> top10Song = songService.find10TopSong();
            ArtistService artistService = new ArtistService();
            List<ArtistModel> artistDAO = artistService.findAll();
            VideoService videoService = new VideoService();
            List<VideoModel> videoDAO = videoService.get10lastvideo();
            if(songDAO!=null){
                for(int i=0;i<10;i++){
                    //song zone
                    request.setAttribute("songid"+Integer.toString(i), songDAO.get(i).getSongid());
                    request.setAttribute("songname"+Integer.toString(i), songDAO.get(i).getSongname());
                    request.setAttribute("imagelink"+Integer.toString(i), songDAO.get(i).getImagelink());
                    request.setAttribute("artistname"+Integer.toString(i),artistDAO.get(songDAO.get(i).getArtist1id()-1).getArtistname());
                    request.setAttribute("artist1id"+Integer.toString(i), songDAO.get(i).getArtist1id());
                    request.setAttribute("viewcount"+Integer.toString(i), songDAO.get(i).getViewcount());
                    request.setAttribute("publishday"+Integer.toString(i), songDAO.get(i).getPublishday());
                    request.setAttribute("Quality"+Integer.toString(i), songDAO.get(i).getQuality());
                    request.setAttribute("songlink"+Integer.toString(i), songDAO.get(i).getLink());
                    
                    request.setAttribute("newaddsongid"+Integer.toString(i), newAddSongDAO.get(i).getSongid());
                    request.setAttribute("newaddsongname"+Integer.toString(i), newAddSongDAO.get(i).getSongname());
                    request.setAttribute("newaddimagelink"+Integer.toString(i), newAddSongDAO.get(i).getImagelink());
                    request.setAttribute("newaddartistname"+Integer.toString(i),artistDAO.get(newAddSongDAO.get(i).getArtist1id()-1).getArtistname());
                    request.setAttribute("newaddartist1id"+Integer.toString(i), newAddSongDAO.get(i).getArtist1id());
                    request.setAttribute("newaddviewcount"+Integer.toString(i), newAddSongDAO.get(i).getViewcount());
                    request.setAttribute("newaddpublishday"+Integer.toString(i), newAddSongDAO.get(i).getPublishday());
                    request.setAttribute("newaddQuality"+Integer.toString(i), newAddSongDAO.get(i).getQuality());
                    request.setAttribute("newaddsonglink"+Integer.toString(i), newAddSongDAO.get(i).getLink());
                    
                    request.setAttribute("top10songid"+Integer.toString(i), top10Song.get(i).getSongid());
                    request.setAttribute("top10songname"+Integer.toString(i), top10Song.get(i).getSongname());
                    request.setAttribute("top10imagelink"+Integer.toString(i), top10Song.get(i).getImagelink());
                    request.setAttribute("top10artistname"+Integer.toString(i),artistDAO.get(top10Song.get(i).getArtist1id()-1).getArtistname());
                    request.setAttribute("top10artist1id"+Integer.toString(i), top10Song.get(i).getArtist1id());
                    request.setAttribute("top10viewcount"+Integer.toString(i), top10Song.get(i).getViewcount());
                    request.setAttribute("top10publishday"+Integer.toString(i), top10Song.get(i).getPublishday());
                    request.setAttribute("top10Quality"+Integer.toString(i), top10Song.get(i).getQuality());
                    request.setAttribute("top10songlink"+Integer.toString(i), top10Song.get(i).getLink());
                    
                    //video zone
                    request.setAttribute("videoname"+Integer.toString(i),videoDAO.get(i).getVideoname());
                    request.setAttribute("videolink"+Integer.toString(i), videoDAO.get(i).getVideolink());
                    request.setAttribute("videothumbnail"+Integer.toString(i), videoDAO.get(i).getThumbnaillink());
                    request.setAttribute("videoid"+Integer.toString(i),videoDAO.get(i).getVideoid());
                }
                RequestDispatcher dispatch = getServletContext().getRequestDispatcher("/trangchu.jsp");
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
