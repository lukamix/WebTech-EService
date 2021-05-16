/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Model.ArtistModel;
import java.util.List;

/**
 *
 * @author PV
 */
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
