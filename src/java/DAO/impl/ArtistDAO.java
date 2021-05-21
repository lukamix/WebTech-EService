package DAO.impl;

import DAO.IArtistDAO;
import Mapper.ArtistMapper;
import Model.ArtistModel;
import java.util.List;

public class ArtistDAO extends AbstractDAO<ArtistModel> implements IArtistDAO {

    @Override
    public ArtistModel findArtistByID(int artistid) {
        StringBuilder sql = new StringBuilder("SELECT * FROM Artist AS s");
        sql.append(" WHERE artistid = ?");
        List<ArtistModel> artist = query(sql.toString(), new ArtistMapper(), artistid);
        return artist.isEmpty() ? null : artist.get(0);
    }

    @Override
    public Long save(ArtistModel artistModel) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void update(ArtistModel artistModel) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void delete(long artistid) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void delete(String artistname) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public int getTotalArtist() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<ArtistModel> findAll() {
        String sql = "SELECT * FROM Artist";
        List<ArtistModel> artist = query(sql, new ArtistMapper());
        return artist.isEmpty() ? null : artist;
    }

    @Override
    public List<ArtistModel> find5MostFavouriteArtist() {
        StringBuilder sql = new StringBuilder("SELECT * FROM Artist");
        sql.append(" WHERE artistid <=5");
        return query(sql.toString(), new ArtistMapper());
    }

    @Override
    public ArtistModel findArtistByName(String artistname) {
        String sql = "SELECT * FROM Artist AS s WHERE artistname = ?";
        List<ArtistModel> artist = query(sql, new ArtistMapper(),artistname);
        if(artist.isEmpty()){
            return null;
        }
        else{
            return artist.get(0);
        }
    }

    @Override
    public void insert(String artistname) {
        String sql ="INSERT INTO Artist (artistname) VALUES (?)";
        insert(sql,artistname);
    }
    
}
