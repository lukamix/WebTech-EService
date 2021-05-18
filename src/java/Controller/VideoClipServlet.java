package Controller;

import Model.ArtistModel;
import Model.VideoModel;
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

@WebServlet(name = "Video-Clip", urlPatterns = {"/Video-Clip"})
public class VideoClipServlet extends HttpServlet {
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
            VideoService vs = new VideoService();
            List<VideoModel> vmlist = vs.getAllVideo(firstindex, 20);
            int count = vs.countVideo();
            ArtistService as = new ArtistService();
            List<ArtistModel> artist = as.findAll();
            if(vmlist!=null){
                request.setAttribute("page", page);
                request.setAttribute("count", count);
                request.setAttribute("Nrecord",vmlist.size());
                for(int i=0;i<vmlist.size();i++){
                    request.setAttribute("videoname"+Integer.toString(i), vmlist.get(i).getVideoname());
                    ArtistModel am = as.findArtistByID(vmlist.get(i).getArtist().getArtistid());
                    request.setAttribute("artist"+Integer.toString(i), artist.get(am.getArtistid()-1).getArtistname());
                    request.setAttribute("thumbnail"+Integer.toString(i),vmlist.get(i).getThumbnaillink());
                    request.setAttribute("videoid"+Integer.toString(i),vmlist.get(i).getVideoid());
                    request.setAttribute("artistid"+Integer.toString(i),vmlist.get(i).getArtist().getArtistid());
                }
                RequestDispatcher dispatch = getServletContext().getRequestDispatcher("/VideoClip.jsp");
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
