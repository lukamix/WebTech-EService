package Service;

import Model.ArtistModel;
import java.util.List;

public interface IArtistService {
    ArtistModel findArtistByID(int artistid);
    List<ArtistModel> findAll();
    List<ArtistModel> find5MostFavouriteArtist();
}
