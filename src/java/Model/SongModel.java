package Model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class SongModel {
    private int songid;
    private String songname;
    private String link;
    private int artist1id;
    private int artist2id;
    private int artist3id;
    private int artist4id;
    private int artist5id;
    private String imagelink;
    private String genre;
    private Date publishday;
    private int viewcount;
    private String author;
    private Date adddate;
    private String Quality;
    private LyricsModel lyrics;
    private List<ArtistModel> artists;

    public List<ArtistModel> getArtists() {
        if(artists == null){
            artists = new ArrayList<ArtistModel>();
        }
        return artists;
    }

    public void setArtists(List<ArtistModel> artists) {
        this.artists = artists;
    }

    public LyricsModel getLyrics() {
        if(lyrics == null) lyrics = new LyricsModel();
        return lyrics;
    }

    public void setLyrics(LyricsModel lyrics) {
        this.lyrics = lyrics;
    }

    public String getQuality() {
        return Quality;
    }

    public void setQuality(String Quality) {
        this.Quality = Quality;
    }

    public int getSongid() {
        return songid;
    }

    public void setSongid(int songid) {
        this.songid = songid;
    }

    public String getSongname() {
        return songname;
    }

    public void setSongname(String songname) {
        this.songname = songname;
    }

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }

    public int getArtist1id() {
        return artist1id;
    }

    public void setArtist1id(int artist1id) {
        this.artist1id = artist1id;
    }

    public int getArtist2id() {
        return artist2id;
    }

    public void setArtist2id(int artist2id) {
        this.artist2id = artist2id;
    }

    public int getArtist3id() {
        return artist3id;
    }

    public void setArtist3id(int artist3id) {
        this.artist3id = artist3id;
    }

    public int getArtist4id() {
        return artist4id;
    }

    public void setArtist4id(int artist4id) {
        this.artist4id = artist4id;
    }

    public int getArtist5id() {
        return artist5id;
    }

    public void setArtist5id(int artist5id) {
        this.artist5id = artist5id;
    }

    public String getImagelink() {
        return imagelink;
    }

    public void setImagelink(String imagelink) {
        this.imagelink = imagelink;
    }

    public String getGenre() {
        return genre;
    }

    public void setGenre(String genre) {
        this.genre = genre;
    }

    public Date getPublishday() {
        return publishday;
    }

    public void setPublishday(Date publishday) {
        this.publishday = publishday;
    }

    public int getViewcount() {
        return viewcount;
    }

    public void setViewcount(int viewcount) {
        this.viewcount = viewcount;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public Date getAdddate() {
        return adddate;
    }

    public void setAdddate(Date adddate) {
        this.adddate = adddate;
    }
    
}
