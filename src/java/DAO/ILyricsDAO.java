package DAO;

import Model.LyricsModel;

public interface ILyricsDAO extends GenericDAO<LyricsModel> {
    LyricsModel findLyricsbySongid(int songid);
}
