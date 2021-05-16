package DAO.impl;

import DAO.ILyricsDAO;
import Mapper.LyricsMapper;
import Model.LyricsModel;
import java.util.List;

public class LyricsDAO extends AbstractDAO<LyricsModel> implements ILyricsDAO {

    @Override
    public LyricsModel findLyricsbySongid(int songid) {
        StringBuilder sql = new StringBuilder("SELECT * FROM Lyrics AS l");
        sql.append(" WHERE songid = ?");
        List<LyricsModel> lyrics = query(sql.toString(), new LyricsMapper(), songid);
        return lyrics.isEmpty() ? null : lyrics.get(0);
    }  
}
