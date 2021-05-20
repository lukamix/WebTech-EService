package Mapper;

import Model.PlaylistModel;
import java.sql.ResultSet;
import java.sql.SQLException;
 
public class PlaylistMapper implements RowMapper<PlaylistModel> {

    @Override
    public PlaylistModel mapRow(ResultSet resultSet) {
        try{
            PlaylistModel playlist =new PlaylistModel();
            playlist.setPlaylistid(resultSet.getInt("playlistid"));
            playlist.setPlaylistname(resultSet.getString("playlistname"));
            playlist.setPlaylistimage(resultSet.getString("playlistimage"));
            return playlist;
        }
        catch(SQLException e){
            return null;
        }
    }
}
