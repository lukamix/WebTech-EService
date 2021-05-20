package Service.impl;

import DAO.ILyricsDAO;
import DAO.impl.LyricsDAO;
import Model.LyricsModel;
import Service.ILyricsService;
 
public class LyricsService implements ILyricsService {
     
    private ILyricsDAO lyricDAO;
    public LyricsService(){
        lyricDAO = new LyricsDAO();
    }
    @Override
    public LyricsModel findLyricsbySongid(int songid) {
        return lyricDAO.findLyricsbySongid(songid);
    } 
}
