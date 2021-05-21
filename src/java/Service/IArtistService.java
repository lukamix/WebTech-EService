package Service;

import Model.ArtistModel;
import java.util.List;

public interface IArtistService {
    ArtistModel findArtistByID(int artistid);
    ArtistModel findArtistByName(String artistname);
    List<ArtistModel> findAll();
    List<ArtistModel> find5MostFavouriteArtist();
    void insert(String artistname);
}
