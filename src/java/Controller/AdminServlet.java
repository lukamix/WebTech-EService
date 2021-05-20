package Controller;

import Model.RoleModel;
import Model.SongModel;
import Model.TiktokModel;
import Model.UserModel;
import Model.User_RoleModel;
import Model.VideoModel;
import Service.impl.RoleService;
import Service.impl.SongService;
import Service.impl.TiktokService;
import Service.impl.UserService;
import Service.impl.User_RoleService;
import Service.impl.VideoService;
import Utils.CheckRole;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "admin", urlPatterns = {"/admin"})
public class AdminServlet extends HttpServlet {
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<String> Cookie = CheckRole.getInstance().getCookie(request);
        if(Cookie.get(0).equals("")||Cookie.get(1).equals("")){
            response.sendError(HttpServletResponse.SC_NOT_FOUND);
        }
        else if(!CheckRole.getInstance().byUserNameAndPassword(Cookie.get(0), Cookie.get(1))){
            response.sendError(HttpServletResponse.SC_NOT_FOUND);
        }
        else{
        response.setContentType("text/html;charset=UTF-8");
        UserService us = new UserService();
        RoleService rs = new RoleService();
        User_RoleService urs = new User_RoleService();
        SongService ss = new SongService();
        VideoService vs = new VideoService();
        TiktokService ts = new TiktokService();
        PrintWriter out = response.getWriter();
        int userpage,songpage,videopage,tiktokpage,count;
        try{
            if(request.getParameter("userpage")!=null){
                userpage = Integer.parseInt(request.getParameter("userpage"));
                count = us.count();
                List<UserModel> umlist = us.finAll(20*(userpage-1),20);
                if(umlist!=null){
                    request.setAttribute("count", count);
                    request.setAttribute("Nrecord",umlist.size());
                    for(int i=0;i<umlist.size();i++){
                        request.setAttribute("username"+Integer.toString(i), umlist.get(i).getUsername());
                        User_RoleModel urm = urs.findUserRoleModelbyid(umlist.get(i).getUserid());
                        RoleModel rm= rs.getRolebyID(urm.getRole_id());
                        request.setAttribute("userrole"+Integer.toString(i), rm.getName());
                    }
                }
            }
            else if(request.getParameter("songpage")!=null){
                songpage = Integer.parseInt(request.getParameter("songpage"));
                count = ss.countSong();
                List<SongModel> smlist = ss.getAllSong(20*(songpage-1), 20);
                if(smlist!=null){
                    request.setAttribute("count", count);
                    request.setAttribute("Nrecord",smlist.size());
                    for(int i=0;i<smlist.size();i++){
                        request.setAttribute("songid"+Integer.toString(i),smlist.get(i).getSongid());
                        request.setAttribute("songname"+Integer.toString(i),smlist.get(i).getSongname());
                        request.setAttribute("songlink"+Integer.toString(i),smlist.get(i).getLink());
                        request.setAttribute("artist1id"+Integer.toString(i),smlist.get(i).getArtist1id());
                        request.setAttribute("Quality"+Integer.toString(i),smlist.get(i).getQuality());
                    }
                }
            }
            else if(request.getParameter("videopage")!=null){
                videopage = Integer.parseInt(request.getParameter("videopage"));
                count = vs.countVideo();
                List<VideoModel> vmlist = vs.getAllVideo(20*(videopage-1),20);
                if(vmlist!=null){
                    request.setAttribute("count", count);
                    request.setAttribute("Nrecord",vmlist.size());
                    for(int i=0;i<vmlist.size();i++){
                        request.setAttribute("videoid"+Integer.toString(i),vmlist.get(i).getVideoid());
                        request.setAttribute("videoname"+Integer.toString(i),vmlist.get(i).getVideoname());
                        request.setAttribute("videolink"+Integer.toString(i),vmlist.get(i).getVideolink());
                        request.setAttribute("thumbnaillink"+Integer.toString(i),vmlist.get(i).getThumbnaillink());
                        request.setAttribute("viewcount"+Integer.toString(i),vmlist.get(i).getViewcount());
                    }
                }
            }
            else if(request.getParameter("tiktokpage")!=null){
                tiktokpage = Integer.parseInt(request.getParameter("tiktokpage"));
                count = ts.countTiktokVideo();
                List<TiktokModel> tmlist =ts.findAll(20*(tiktokpage-1), 20);
                if(tmlist!=null){
                    request.setAttribute("count", count);
                    request.setAttribute("Nrecord",tmlist.size());
                    for(int i=0;i<tmlist.size();i++){
                        request.setAttribute("tiktokid"+Integer.toString(i),tmlist.get(i).getTiktokid());
                        request.setAttribute("html"+Integer.toString(i),tmlist.get(i).getHtml());
                    }
                }
            }
            else{
            }
            RequestDispatcher dispatch = getServletContext().getRequestDispatcher("/Admin.jsp");
            dispatch.forward(request,response);
        }
        finally{
            out.close();
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
