/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Service;

import Model.SongModel;
import java.util.List;

/**
 *
 * @author PV
 */
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
}
