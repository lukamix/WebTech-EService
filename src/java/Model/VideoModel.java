package Model;

public class VideoModel {
    private int videoid;
    private String videoname;
    private String videolink;
    private String thumbnaillink;
    private ArtistModel artist;
    public VideoModel(){
        artist = new ArtistModel();
    }
    public int getVideoid() {
        return videoid;
    }

    public void setVideoid(int videoid) {
        this.videoid = videoid;
    }

    public String getVideoname() {
        return videoname;
    }

    public void setVideoname(String videoname) {
        this.videoname = videoname;
    }

    public String getVideolink() {
        return videolink;
    }

    public void setVideolink(String videolink) {
        this.videolink = videolink;
    }

    public String getThumbnaillink() {
        return thumbnaillink;
    }

    public void setThumbnaillink(String thumbnaillink) {
        this.thumbnaillink = thumbnaillink;
    }

    public ArtistModel getArtist() {
        return artist;
    }

    public void setArtist(ArtistModel artist) {
        this.artist = artist;
    }
    
}
