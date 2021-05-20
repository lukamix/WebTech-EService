package Service.impl;

import DAO.ISongDAO;
import DAO.impl.SongDAO;
import Model.SongModel;
import Service.ISongService;
import java.util.List;
 
public class SongService implements ISongService{
    
    private ISongDAO songDAO;
    public SongService(){
        songDAO = new SongDAO();
    }
    @Override
    public List<SongModel> find10NewSong() {
        return songDAO.find10NewSong();
    }
    @Override
    public SongModel findSongbyName(String songname){
        return songDAO.findSongbyName(songname);
    }

    @Override
    public SongModel findSongbyId(int id) {
        return songDAO.findSongbyID(id);
    }

    @Override
    public List<SongModel> find10relatedSong(int artistid) {
        return songDAO.find10relatedSong(artistid);
    }

    @Override
    public List<SongModel> find3MatchedSong(String query) {
        return songDAO.find3MatchedSong(query);
    }

    @Override
    public List<SongModel> find20TopSong() {
        return songDAO.find20TopSong();
    }

    @Override
    public int countSong() {
        return songDAO.countSong();
    }

    @Override
    public List<SongModel> getAllSong(int firstindex, int maxItem) {
        return songDAO.getAllSong(firstindex, maxItem);
    }

    @Override
    public List<SongModel> findSongByArtist(int artistid, int firstindex, int maxItem) {
        return songDAO.findSongByArtist(artistid, firstindex, maxItem);
    }

    @Override
    public int countSongByArtist(int artistid) {
        return songDAO.countSongByArtist(artistid);
    }

    @Override
    public List<SongModel> find10AddSong() {
        return songDAO.find10AddSong();
    }

    @Override
    public List<SongModel> find10TopSong() {
        return songDAO.find10TopSong();
    }

    @Override
    public void delete(Integer songid) {
        songDAO.delete(songid);
    }

    @Override
    public void update(String songname, String link, int artist1id,String Quality,int songid) {
        songDAO.update(songname, link, artist1id,Quality,songid);
    }
}
