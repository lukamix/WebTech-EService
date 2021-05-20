package Mapper;

import Model.Artist_SongModel;
import java.sql.ResultSet;
import java.sql.SQLException;
 
public class Artist_SongMapper implements RowMapper<Artist_SongModel> {

    @Override
    public Artist_SongModel mapRow(ResultSet resultSet) {
        try{
            Artist_SongModel artist_song = new Artist_SongModel();
            artist_song.setSongid(resultSet.getInt("songid"));
            artist_song.setArtistid(resultSet.getInt("artistid"));
            return artist_song;
        }
        catch(SQLException e){
            return null;
        }
    }
}
