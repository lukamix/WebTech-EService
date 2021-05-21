package Service.impl;

import DAO.IArtistDAO;
import DAO.impl.ArtistDAO;
import Model.ArtistModel;
import Service.IArtistService;
import java.util.List;
 
public class ArtistService implements IArtistService{
    
    private IArtistDAO artistDAO;
    public ArtistService(){
        artistDAO = new ArtistDAO();
    }
    @Override
    public ArtistModel findArtistByID(int artistid) {
        return artistDAO.findArtistByID(artistid);
    }

    @Override
    public List<ArtistModel> findAll() {
        return artistDAO.findAll();
    }

    @Override
    public List<ArtistModel> find5MostFavouriteArtist() {
        return artistDAO.find5MostFavouriteArtist();
    }

    @Override
    public ArtistModel findArtistByName(String artistname) {
        return artistDAO.findArtistByName(artistname);
    }

    @Override
    public void insert(String artistname) {
        artistDAO.insert(artistname);
    }
    
}
