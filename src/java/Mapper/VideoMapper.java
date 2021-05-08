package Mapper;

import Model.VideoModel;
import java.sql.ResultSet;
import java.sql.SQLException;

public class VideoMapper implements RowMapper<VideoModel> {

    @Override
    public VideoModel mapRow(ResultSet resultSet) {
        try {
            VideoModel video = new VideoModel();
            video.setVideoid(resultSet.getInt("videoid"));
            video.setVideoname(resultSet.getString("videoname"));
            video.setVideolink(resultSet.getString("videolink"));
            video.setThumbnaillink(resultSet.getString("thumbnaillink"));
            video.getArtist().setArtistid(resultSet.getInt("artistid"));
            video.setViewcount(resultSet.getInt("viewcount"));
            return video;
        } catch (SQLException e) {
            return null;
        }
    }
    
}
