package DAO;

import Model.SongModel;
import java.util.List;

public interface ISongDAO extends GenericDAO<SongModel> {
    SongModel findSongbyID(int songid);
    SongModel findSongbyName(String songname);
    List<SongModel> getAllSong(int firstindex,int maxItem);
    List<SongModel> find10NewSong();
    List<SongModel> find10AddSong();
    List<SongModel> find10relatedSong(int artistid);
    List<SongModel> findSongByArtist(int artistid,int firstindex,int maxItem);
    List<SongModel> find3MatchedSong(String query);
    List<SongModel> find20TopSong();
    List<SongModel> find10TopSong();
    int getTotalSong();
    void update(SongModel songModel);
    void delete(long songid);
    void delete(Integer songid);
    void update(String songname, String link,int artist1id,String Quality,int viewcount,int songid);
    void delete(String songname);
    void insertSong(String songname, String link,int artist1id,String imagelink,String genre,String Quality,String Author);
    void insertSong(String songname, String link,int artist1id,String imagelink,String genre,String Quality);
    int countSong();
    int countSongByArtist(int artistid);
}
