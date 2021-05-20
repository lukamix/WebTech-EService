package Service;

import Model.TiktokModel;
import java.util.List;

public interface ITiktokService {
    TiktokModel findByTikTokID(Integer tiktokid);
    int countTiktokVideo();
    List<TiktokModel> findAll(int firstindex,int maxItem);
    void update(Integer tiktokid,String html);
}
