package DAO.impl;

import DAO.ISongDAO;
import Mapper.SongMapper;
import Model.SongModel;
import java.util.List;
public class SongDAO extends AbstractDAO<SongModel> implements ISongDAO {
    @Override
    public SongModel findSongbyID(int songid) {
        StringBuilder sql = new StringBuilder("SELECT * FROM Song AS s");
        sql.append(" WHERE songid = ?");
        List<SongModel> songs = query(sql.toString(), new SongMapper(), songid);
        return songs.isEmpty() ? null : songs.get(0);
    }

    @Override
    public SongModel findSongbyName(String songname) {
        StringBuilder sql = new StringBuilder("SELECT * FROM Song AS s");
        sql.append(" WHERE songname = ?");
        List<SongModel> songs = query(sql.toString(), new SongMapper(), songname);
        return songs.isEmpty() ? null : songs.get(0);
    }

    @Override
    public int getTotalSong() {
        String sql = "SELECT count(*) FROM Song";
	return count(sql);
    }

    @Override
    public void update(SongModel songModel) {
        StringBuilder sql = new StringBuilder("UPDATE Song SET songname = ?,");
        sql.append(" link = ?, artist1id = ?, artist2id = ?,");
        sql.append(" artist3id = ?, artist4id = ?, artist5id = ?, imagelink = ?,");
        sql.append(" genre = ?, publishday = ?, viewcount = ?, author = ? WHERE songid = ?");
        update(sql.toString(),songModel.getSongname(),songModel.getLink(),songModel.getArtist1id(),
            songModel.getArtist2id(),songModel.getArtist3id(),songModel.getArtist4id(),songModel.getArtist5id(),
            songModel.getImagelink(),songModel.getGenre(),songModel.getPublishday(),songModel.getViewcount(),
            songModel.getAuthor(),songModel.getSongid());
    }

    @Override
    public void delete(long songid) {
        String sql = "DELETE FROM Song WHERE songid = ?";
	update(sql, songid);
    }

    @Override
    public void delete(String songname) {
        String sql = "DELETE FROM Song WHERE songname = ?";
	update(sql, songname);
    }

    @Override
    public List<SongModel> find10NewSong() {
        String sql = "SELECT * FROM song ORDER BY DATE(publishday) DESC Limit 10";
        return query(sql, new SongMapper());
    }

    @Override
    public List<SongModel> find10relatedSong(int artistid) {
        String sql = "SELECT * FROM Song WHERE artist1id=? ORDER BY rand() LIMIT 10";
        return query(sql, new SongMapper(), artistid);
    }

    @Override
    public List<SongModel> find3MatchedSong(String query) {
        String sql = "SELECT * FROM Song WHERE songname like '%"+query+"%' ORDER BY rand() LIMIT 3";
        return query(sql,new SongMapper(),query);
    }

    @Override
    public List<SongModel> find20TopSong() {
        String sql = "SELECT * FROM Song ORDER BY viewcount DESC LIMIT 20";
        return query(sql,new SongMapper());
    }
    @Override
    public List<SongModel> find10TopSong() {
        String sql = "SELECT * FROM Song ORDER BY viewcount DESC LIMIT 10";
        return query(sql,new SongMapper());
    }

    @Override
    public List<SongModel> getAllSong(int firstindex, int maxItem) {
        String sql ="SELECT * FROM Song LIMIT ?,?";
        return query(sql,new SongMapper(),firstindex,maxItem);
    }

    @Override
    public int countSong() {
        String sql ="SELECT COUNT(songid) FROM Song";
        return count(sql);
    }

    @Override
    public List<SongModel> findSongByArtist(int artistid, int firstindex, int maxItem) {
        String sql = "SELECT * FROM Song WHERE artist1id = ? LIMIT ?,?";
        return query(sql,new SongMapper(),artistid,firstindex,maxItem);
    }

    @Override
    public int countSongByArtist(int artistid) {
        String sql ="SELECT COUNT(songid) FROM Song WHERE artist1id=?";
        return count(sql,artistid);
    }

    @Override
    public List<SongModel> find10AddSong() {
        String sql = "SELECT * FROM (SELECT * FROM Song ORDER BY songid DESC LIMIT 10) sub ORDER BY songid ASC";
        return query(sql, new SongMapper());
    }
    @Override
    public void delete(Integer songid){
        String sql = "DELETE FROM SOng WHERE songid=?";
        delete(sql,songid);
    }
    @Override
    public void update(String songname, String link,int artist1id,String Quality,int viewcount,int songid){
        String sql = "UPDATE Song SET songname=?,link=?,artist1id=?,Quality=?,viewcount=? WHERE songid=?";
        update(sql,songname,link, artist1id,Quality,viewcount,songid);
    }

    @Override
    public void insertSong(String songname, String link, int artist1id, String imagelink, String genre, String Quality, String Author) {
        String sql = "INSERT INTO Song (songname,link,artist1id,imagelink,genre,author,Quality) VALUES (?,?,?,?,?,?,?)";
        insert(sql,songname,link,artist1id,imagelink,genre,Author,Quality);
    }

    @Override
    public void insertSong(String songname, String link, int artist1id, String imagelink, String genre, String Quality) {
        String sql = "INSERT INTO Song (songname,link,artist1id,imagelink,genre,Quality) VALUES (?,?,?,?,?,?)";
        insert(sql,songname,link,artist1id,imagelink,genre,Quality);
    }
}
