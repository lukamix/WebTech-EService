package Service;

import Model.SongModel;
import java.util.List;

public interface ISongService {
    List<SongModel> find10NewSong();
    List<SongModel> find10AddSong();
    SongModel findSongbyId(int id);
    SongModel findSongbyName(String songname);
    List<SongModel> find10relatedSong(int artistid);
    List<SongModel> find3MatchedSong(String query);
    List<SongModel> find20TopSong();
    List<SongModel> find10TopSong();
    int countSong();
    int countSongByArtist(int artistid);
    List<SongModel> getAllSong(int firstindex,int maxItem);
    List<SongModel> findSongByArtist(int artistid,int firstindex,int maxItem);
    void delete(Integer songid);
    void update(String songname, String link,int artist1id,String Quality,int viewcount,int songid);
    void insertSong(String songname, String link,int artist1id,String imagelink,String genre,String Quality,String Author);
    void insertSong(String songname, String link,int artist1id,String imagelink,String genre,String Quality);
}
