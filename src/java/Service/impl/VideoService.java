package Service.impl;

import DAO.IVideoDAO;
import DAO.impl.VideoDAO;
import Model.VideoModel;
import Service.IVideoService;
import java.util.List;
 
public class VideoService implements IVideoService {
     
    private IVideoDAO videoDAO;
    public VideoService(){
        videoDAO = new VideoDAO();
    }
    @Override
    public List<VideoModel> get10lastvideo() {
        return videoDAO.get10lastvideo();
    }

    @Override
    public VideoModel getVideoByName(String videoname) {
        return videoDAO.getVideoByName(videoname);
    }   

    @Override
    public VideoModel getVideoById(int id) {
        return videoDAO.getVideoById(id);
    }

    @Override
    public List<VideoModel> get10relatedvideo(int artistid) {
        return videoDAO.get10relatedvideo(artistid);
    }
    @Override
    public List<VideoModel> get20TopVideo(){
        return videoDAO.get20TopVideo();
    }

    @Override
    public List<VideoModel> getAllVideo(int firstindex, int maxItem) {
        return videoDAO.getAllVideo(firstindex, maxItem);
    }

    @Override
    public int countVideo() {
        return videoDAO.countVideo();
    }

    @Override
    public List<VideoModel> findVideoByArtist(int artistid, int firstindex, int maxItem) {
        return videoDAO.findVideoByArtist(artistid, firstindex, maxItem);
    }

    @Override
    public int countVideoByArtist(int artistid) {
        return videoDAO.countVideoByArtist(artistid);
    }
    @Override
    public void delete(Integer videoid){
        videoDAO.delete(videoid);
    }

    @Override
    public void update(String videoname, String videolink, String thumbnaillink, int viewcount,Integer videoid) {
        videoDAO.update(videoname, videolink, thumbnaillink, viewcount,videoid);
    }
}
