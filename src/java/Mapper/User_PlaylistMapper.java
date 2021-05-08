package Mapper;

import Model.User_PlaylistModel;
import java.sql.ResultSet;
import java.sql.SQLException;

public class User_PlaylistMapper implements RowMapper<User_PlaylistModel> {

    @Override
    public User_PlaylistModel mapRow(ResultSet resultSet) {
        try {
            User_PlaylistModel user_playlist = new User_PlaylistModel();
            user_playlist.setPlaylistid(resultSet.getInt("playlistid"));
            user_playlist.setUserid(resultSet.getInt("userid"));
            return user_playlist;
        } catch (SQLException ex) {
            return null;
        }
    }
    
}
