package DAO.impl;

import DAO.ITiktokDAO;
import Mapper.TiktokMapper;
import Model.TiktokModel;
import java.util.List;

public class TikTokDAO extends AbstractDAO<TiktokModel> implements ITiktokDAO {

    @Override
    public TiktokModel findByTikTokID(Integer tiktokid) {
        String sql = "SELECT * FROM tiktok WHERE tiktokid =?";
        List<TiktokModel> tm = query(sql,new TiktokMapper(),tiktokid);
        return tm.isEmpty()?null : tm.get(0); 
    }

    @Override
    public int countTiktokVideo() {
        String sql = "SELECT count(tiktokid) FROM tiktok";
        return count(sql);
    }

    @Override
    public List<TiktokModel> findAll(int firstindex,int maxItem){
        String sql = "SELECT * FROM tiktok LIMIT ?,?";
        return query(sql,new TiktokMapper(),firstindex,maxItem);
    }
}
