package Mapper;

import Model.Playlist_SongModel;
import java.sql.ResultSet;
import java.sql.SQLException;
 
public class Playlist_SongMapper implements RowMapper<Playlist_SongModel> {

    @Override
    public Playlist_SongModel mapRow(ResultSet resultSet) {
        try {
            Playlist_SongModel playlist_song = new Playlist_SongModel();
            playlist_song.setPlatlistid(resultSet.getInt("playlistid"));
            playlist_song.setSongid(resultSet.getInt("songid"));
            return playlist_song;
        } catch (SQLException ex) {
            return null;
        }
    }
}
