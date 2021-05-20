package Mapper;

import Model.LyricsModel;
import java.sql.ResultSet;
import java.sql.SQLException;
 
public class LyricsMapper implements RowMapper<LyricsModel> {

    @Override
    public LyricsModel mapRow(ResultSet resultSet) {
        try {
            LyricsModel lyrics = new LyricsModel();
            lyrics.setSongid(resultSet.getInt("songid"));
            lyrics.setLyrics(resultSet.getString("lyrics"));
            return lyrics;
        } catch (SQLException e) {
            return null;
        }
    }
}
