package Mapper;

import Model.SongModel;
import java.sql.ResultSet;
import java.sql.SQLException;

public class SongMapper implements RowMapper<SongModel> {

    @Override
    public SongModel mapRow(ResultSet resultSet) {
        try {
            SongModel song = new SongModel();
            song.setSongid(resultSet.getInt("songid"));
            song.setSongname(resultSet.getString("songname"));
            song.setLink(resultSet.getString("link"));
            song.setArtist1id(resultSet.getInt("artist1id"));
            song.setArtist2id(resultSet.getInt("artist2id"));
            song.setArtist3id(resultSet.getInt("artist3id"));
            song.setArtist4id(resultSet.getInt("artist4id"));
            song.setArtist5id(resultSet.getInt("artist5id"));
            song.setImagelink(resultSet.getString("imagelink"));
            song.setGenre(resultSet.getString("genre"));
            song.setPublishday(resultSet.getDate("publishday"));
            song.setViewcount(resultSet.getInt("viewcount"));
            song.setAuthor(resultSet.getString("author"));
            song.setQuality(resultSet.getString("Quality"));
            return song;
        } catch (SQLException e) {
            return null;
        }
    }
    
}
