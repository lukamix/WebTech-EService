package Mapper;

import Model.ArtistModel;
import java.sql.ResultSet;
import java.sql.SQLException;
 
public class ArtistMapper implements RowMapper<ArtistModel> {

    @Override
    public ArtistModel mapRow(ResultSet resultSet) {
        try {
            ArtistModel artist = new ArtistModel();
            artist.setArtistid(resultSet.getInt("artistid"));
            artist.setArtistname(resultSet.getString("artistname"));
            artist.setArtistdescription(resultSet.getString("artistdescription"));
            artist.setImagelink(resultSet.getString("imagelink"));
            return artist;
        }catch (SQLException e) {
            return null;
        }
    }
}
