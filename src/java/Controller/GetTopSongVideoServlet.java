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

@WebServlet(name = "BXH", urlPatterns = {"/BXH"})
public class GetTopSongVideoServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try{
            SongService ss = new SongService();
            List<SongModel> topSong = ss.find20TopSong();
            VideoService vs = new VideoService();
            List<VideoModel> topVideo = vs.get20TopVideo();
            ArtistService as = new ArtistService();
            List<ArtistModel> artist = as.findAll();
            if(topSong!=null && artist!=null && topVideo!=null){
                for(int i=0;i<20;i++){
                    request.setAttribute("songnametop"+Integer.toString(i), topSong.get(i).getSongname());
                    request.setAttribute("songlinktop"+Integer.toString(i), topSong.get(i).getLink());
                    request.setAttribute("songimagelinktop"+Integer.toString(i), topSong.get(i).getImagelink());
                    request.setAttribute("songviewcounttop"+Integer.toString(i), topSong.get(i).getViewcount());
                    request.setAttribute("songqualitytop"+Integer.toString(i), topSong.get(i).getQuality());
                    request.setAttribute("songidtop"+Integer.toString(i), topSong.get(i).getSongid());
                    request.setAttribute("songartisttop"+Integer.toString(i), topSong.get(i).getArtist1id());
                    request.setAttribute("artistnametop"+Integer.toString(i), artist.get(topSong.get(i).getArtist1id()-1).getArtistname());
                }
                for(int i=0;i<20;i++){
                    request.setAttribute("videonametop"+Integer.toString(i), topVideo.get(i).getVideoname());
                    request.setAttribute("videolinktop"+Integer.toString(i), topVideo.get(i).getVideolink());
                    request.setAttribute("videoimagelinktop"+Integer.toString(i), topVideo.get(i).getThumbnaillink());
                    request.setAttribute("videoviewcounttop"+Integer.toString(i), topVideo.get(i).getViewcount());
                    request.setAttribute("videoidtop"+Integer.toString(i), topVideo.get(i).getVideoid());
                    request.setAttribute("videoartistidtop"+Integer.toString(i),topVideo.get(i).getArtist().getArtistid());
                    ArtistModel am = as.findArtistByID(topVideo.get(i).getArtist().getArtistid());
                    request.setAttribute("videoartistnametop"+Integer.toString(i), artist.get(am.getArtistid()-1).getArtistname());
                }
                RequestDispatcher dispatch = getServletContext().getRequestDispatcher("/BangXepHang.jsp");
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
