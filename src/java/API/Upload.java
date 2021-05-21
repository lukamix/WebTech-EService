package API;

import Service.impl.ArtistService;
import Service.impl.SongService;
import Service.impl.TiktokService;
import Service.impl.VideoService;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "Upload", urlPatterns = {"/Upload"})
public class Upload extends HttpServlet {
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String type =request.getParameter("type");
        try (PrintWriter out = response.getWriter()) {
            switch(type){
                case "Song":{
                    SongService ss = new SongService();
                    ArtistService as = new ArtistService();
                    String songname = request.getParameter("sname");
                    String songlink = request.getParameter("slink");
                    String artistname = request.getParameter("artistname");
                    String songimage = request.getParameter("songimage");
                    String songgenre = request.getParameter("songgenre");
                    String songquality = request.getParameter("songquality");
                    String songauthor = request.getParameter("songauthor");
                    int artistid;
                    if(as.findArtistByName(artistname)==null){
                        as.insert(artistname);
                    }
                    artistid = as.findArtistByName(artistname).getArtistid();
                    ss.insertSong(songname, songlink, artistid, songimage, songgenre, songquality, songauthor);
                    out.println("<script type=\"text/javascript\">");
                    out.println("alert('Cập Nhật Bài Hát Thành Công !');");
                    out.println("window.location.href='upload';");
                    out.println("</script>");
                    break;
                }
                case "Video":{
                    VideoService vs = new VideoService();
                    ArtistService as = new ArtistService();
                    String videoname = request.getParameter("vname");
                    String videolink = request.getParameter("vlink");
                    String thumbnail = request.getParameter("thumbnail");
                    String artist = request.getParameter("artist");
                    int artistid;
                    if(as.findArtistByName(artist)==null){
                        as.insert(artist);
                    }
                    artistid = as.findArtistByName(artist).getArtistid();
                    vs.insertVideo(videoname, videolink, thumbnail, artistid);
                    out.println("<script type=\"text/javascript\">");
                    out.println("alert('Cập Nhật Video Thành Công !');");
                    out.println("window.location.href='upload';");
                    out.println("</script>");
                    break;
                }
                case "TikTok":{
                    TiktokService tts = new TiktokService();
                    String html = request.getParameter("html");
                    tts.insert(html);
                    out.println("<script type=\"text/javascript\">");
                    out.println("alert('Cập Nhật Thành Công');");
                    out.println("window.location.href='upload';");
                    out.println("</script>");
                    break;
                }
                case "SendLove":{
                    String love = request.getParameter("love");
                    out.println("<script type=\"text/javascript\">");
                    out.println("alert('Chúng Tôi Cũng Yêu Bạn !');");
                    out.println("window.location.href='upload';");
                    out.println("</script>");
                    break;
                }
                default:{
                    
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
