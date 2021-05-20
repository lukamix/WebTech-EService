package Service;

import Model.VideoModel;
import java.util.List;
 
public interface IVideoService {
    List<VideoModel> get10lastvideo();
    VideoModel getVideoByName(String videoname);
    VideoModel getVideoById(int id);
    List<VideoModel> get10relatedvideo(int artistid);
    List<VideoModel> get20TopVideo();
    List<VideoModel> getAllVideo(int firstindex,int maxItem);
    List<VideoModel> findVideoByArtist(int artistid,int firstindex,int maxItem);
    int countVideo();
    int countVideoByArtist(int artistid);
    void delete(Integer videoid);
    void update(String videoname,String videolink,String thumbnaillink,int viewcount,Integer videoid);
}
