package Controller;

import Model.ArtistModel;
import Model.VideoModel;
import Service.IArtistService;
import Service.IVideoService;
import Service.impl.ArtistService;
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

@WebServlet(name = "mp4", urlPatterns = {"/mp4"})
public class VideoServlet extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try{
            int id = Integer.parseInt(request.getParameter("videoid"));
            IVideoService vs = new VideoService();
            IArtistService as = new ArtistService();
            VideoModel res = vs.getVideoById(id);
            if(res!=null){
                List<VideoModel> relatedVideo = vs.get10relatedvideo(res.getArtist().getArtistid());
                for(int i=0;i<10;i++){
                    request.setAttribute("videoid"+Integer.toString(i),relatedVideo.get(i).getVideoid());
                    request.setAttribute("videoname"+Integer.toString(i),relatedVideo.get(i).getVideoname());
                    request.setAttribute("imagelink"+Integer.toString(i),relatedVideo.get(i).getThumbnaillink());
                }
                ArtistModel am = as.findArtistByID(res.getArtist().getArtistid());
                request.setAttribute("videoname",res.getVideoname());
                request.setAttribute("videolink",res.getVideolink());
                request.setAttribute("imagelink", res.getThumbnaillink());
                request.setAttribute("artistname", am.getArtistname());
                request.setAttribute("artistid",res.getArtist().getArtistid());
                RequestDispatcher dispatch = getServletContext().getRequestDispatcher("/video.jsp");
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
