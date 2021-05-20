package DAO;

import Model.ArtistModel;
import java.util.List;

public interface IArtistDAO extends GenericDAO<ArtistModel> {
    ArtistModel findArtistByID(int artistid);
    Long save(ArtistModel artistModel);
    void update(ArtistModel artistModel);
    void delete(long artistid);
    void delete(String artistname);
    List<ArtistModel> findAll();
    int getTotalArtist();
    List<ArtistModel> find5MostFavouriteArtist();
}
