package DAO.impl;

import DAO.IVideoDAO;
import Mapper.SongMapper;
import Mapper.VideoMapper;
import Model.VideoModel;
import java.util.List;

public class VideoDAO extends AbstractDAO<VideoModel> implements IVideoDAO {
    
    @Override
    public List<VideoModel> get10lastvideo() {
        String sql = "SELECT * FROM (SELECT * FROM Video ORDER BY videoid DESC LIMIT 10) sub ORDER BY videoid ASC";
        return query(sql, new VideoMapper());
    }

    @Override
    public VideoModel getVideoByName(String videoname) {
        String sql = "SELECT * FROM Video WHERE videoname = ?";
        List<VideoModel> videos = query(sql, new VideoMapper(), videoname);
        return videos.isEmpty() ? null : videos.get(0);
    }

    @Override
    public VideoModel getVideoById(int id) {
        String sql = "SELECT * FROM Video WHERE videoid = ?";
        List<VideoModel> videos = query(sql, new VideoMapper(), id);
        return videos.isEmpty() ? null : videos.get(0);
    }

    @Override
    public List<VideoModel> get10relatedvideo(int artistid) {
        String sql = "SELECT * FROM (SELECT * FROM Video ORDER BY videoid DESC LIMIT 10) sub ORDER BY rand() ASC";
        return query(sql, new VideoMapper());
    }

    @Override
    public List<VideoModel> get20TopVideo() {
        String sql = "SELECT * FROM Video ORDER BY viewcount DESC LIMIT 20";
        return query(sql,new VideoMapper());
    }

    @Override
    public List<VideoModel> getAllVideo(int firstindex,int maxItem) {
        String sql ="SELECT * FROM Video LIMIT ?,?";
        return query(sql,new VideoMapper(),firstindex,maxItem);
    }

    @Override
    public int countVideo() {
        String sql ="SELECT COUNT(videoid) FROM Video";
        return count(sql);
    }

    @Override
    public List<VideoModel> findVideoByArtist(int artistid, int firstindex, int maxItem) {
        String sql = "SELECT * FROM Video WHERE artistid = ? LIMIT ?,?";
        return query(sql,new VideoMapper(),artistid,firstindex,maxItem);
    }

    @Override
    public int countVideoByArtist(int artistid) {
        String sql ="SELECT COUNT(videoid) FROM Video WHERE artistid = ?";
        return count(sql,artistid);
    }
}
