package DAO;

import Model.VideoModel;
import java.util.List;

public interface IVideoDAO extends GenericDAO<VideoModel> {
    List<VideoModel> get10lastvideo();
    VideoModel getVideoByName(String videoname);
    VideoModel getVideoById(int id);
    List<VideoModel> get10relatedvideo(int artistid);
    List<VideoModel> get20TopVideo();
    List<VideoModel> getAllVideo(int firstindex,int maxItem);
    List<VideoModel> findVideoByArtist(int artistid,int firstindex,int maxItem);
    int countVideo();
    int countVideoByArtist(int artistid);
}
