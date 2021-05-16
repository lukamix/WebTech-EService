package Service;

import Model.LyricsModel;

public interface ILyricsService {
    public LyricsModel findLyricsbySongid(int songid);
}
