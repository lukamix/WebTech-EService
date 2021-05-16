package DAO;

import Model.SongModel;
import java.util.List;

public interface ISongDAO extends GenericDAO<SongModel> {
    SongModel findSongbyID(int songid);
    SongModel findSongbyName(String songname);
    List<SongModel> getAllSong(int firstindex,int maxItem);
    List<SongModel> findAll();
    List<SongModel> find10NewSong();
    List<SongModel> find10relatedSong(int artistid);
    List<SongModel> findSongByArtist(int artistid,int firstindex,int maxItem);
    List<SongModel> find3MatchedSong(String query);
    List<SongModel> find20TopSong();
    int getTotalSong();
    void update(SongModel songModel);
    void delete(long songid);
    void delete(String songname);
    int countSong();
    int countSongByArtist(int artistid);
}
