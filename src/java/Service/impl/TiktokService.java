package Service.impl;

import DAO.ITiktokDAO;
import DAO.impl.TikTokDAO;
import Model.TiktokModel;
import Service.ITiktokService;
import java.util.List;
 
public class TiktokService implements ITiktokService{
     
    ITiktokDAO tiktokDAO;
    public TiktokService(){
        tiktokDAO = new TikTokDAO();
    }
    @Override
    public TiktokModel findByTikTokID(Integer tiktokid) {
        return tiktokDAO.findByTikTokID(tiktokid);
    }

    @Override
    public int countTiktokVideo() {
        return tiktokDAO.countTiktokVideo();
    }

    @Override
    public List<TiktokModel> findAll(int firstindex, int maxItem) {
        return tiktokDAO.findAll(firstindex, maxItem);
    }

    @Override
    public void update(Integer tiktokid, String html) {
        tiktokDAO.update(tiktokid, html);
    }
    
}
