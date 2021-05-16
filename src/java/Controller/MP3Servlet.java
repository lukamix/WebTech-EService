package Controller;

import Model.ArtistModel;
import Model.LyricsModel;
import Model.SongModel;
import Service.impl.ArtistService;
import Service.impl.LyricsService;
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

@WebServlet(name = "mp3", urlPatterns = {"/mp3"})
public class MP3Servlet extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            int songid = Integer.parseInt(request.getParameter("songid"));
            SongService songService =new SongService();
            SongModel songModel = songService.findSongbyId(songid);
            if(songModel!=null){
                GetSongInfo(songModel,request,songid);
                List<SongModel> listSongModel = songService.find10relatedSong(songModel.getArtist1id());
                GetRelatedSongInfo(listSongModel,request);
                RequestDispatcher dispatch = getServletContext().getRequestDispatcher("/mp3.jsp");
                dispatch.forward(request,response);
            }
            else{
                RequestDispatcher dispatch = getServletContext().getRequestDispatcher("/trangchu.jsp");
                dispatch.forward(request,response);
            }
        }
        finally{
            out.close();
        }
    }
    private void GetSongInfo(SongModel songModel,HttpServletRequest request,int songid){
        ArtistService artistService = new ArtistService();
        ArtistModel artist = artistService.findArtistByID(songModel.getArtist1id());
        LyricsService lyricsService = new LyricsService();
        LyricsModel lyric = lyricsService.findLyricsbySongid(songid);
        if(lyric!=null){
            request.setAttribute("lyric",lyric.getLyrics());
        }
        request.setAttribute("artistname", artist.getArtistname());
        request.setAttribute("songlink",songModel.getLink());
        request.setAttribute("imagelink",songModel.getImagelink());
        request.setAttribute("songname",songModel.getSongname());
        request.setAttribute("artist1id",songModel.getArtist1id());
        request.setAttribute("songauthor",songModel.getAuthor());
        request.setAttribute("publishday",songModel.getPublishday());
        request.setAttribute("Quality",songModel.getQuality());
        request.setAttribute("viewcount",songModel.getViewcount());
    }
    private void GetRelatedSongInfo(List<SongModel> listSongModel,HttpServletRequest request){
        ArtistService artistService = new ArtistService();
        for(int i=0;i<listSongModel.size();i++){
            ArtistModel artist = artistService.findArtistByID(listSongModel.get(i).getArtist1id());
            request.setAttribute("songid"+Integer.toString(i+1), listSongModel.get(i).getSongid());
            request.setAttribute("artistname"+Integer.toString(i+1), artist.getArtistname());
            request.setAttribute("imagelink"+Integer.toString(i+1),listSongModel.get(i).getImagelink());
            request.setAttribute("songname"+Integer.toString(i+1),listSongModel.get(i).getSongname());
            request.setAttribute("artist1id"+Integer.toString(i+1),listSongModel.get(i).getArtist1id());
            request.setAttribute("publishday"+Integer.toString(i+1),listSongModel.get(i).getPublishday());
            request.setAttribute("Quality"+Integer.toString(i+1),listSongModel.get(i).getQuality());
            request.setAttribute("viewcount"+Integer.toString(i+1),listSongModel.get(i).getViewcount());
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
