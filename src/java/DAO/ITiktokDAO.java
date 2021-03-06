package DAO;

import Model.TiktokModel;
import java.util.List;

public interface ITiktokDAO {
    TiktokModel findByTikTokID(Integer tiktokid);
    int countTiktokVideo();
    List<TiktokModel> findAll(int firstindex,int maxItem);
    void update(Integer tiktokid,String html);
    void delete(Integer tiktokid);
    void insert(String html);
}
