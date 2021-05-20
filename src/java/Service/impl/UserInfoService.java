package Service.impl;

import DAO.IUserInfoDAO;
import DAO.impl.UserInfoDAO;
import Model.UserInfoModel;
import Service.IUserInfoService;
import java.util.List;
 
public class UserInfoService implements IUserInfoService{
 
    private IUserInfoDAO userinfoDAO;
    public UserInfoService(){
        userinfoDAO = new UserInfoDAO();
    }
    @Override
    public UserInfoModel findUserInfoById(int userid) {
        return userinfoDAO.findUserInfoById(userid);
    }

    @Override
    public Long InsertUserInfo(String lastname, String email) {
        return userinfoDAO.InsertUserInfo(lastname, email);
    }

    @Override
    public UserInfoModel findUserInfoByEmail(String email) {
        return userinfoDAO.findUserInfoByEmail(email);
    }

    @Override
    public List<UserInfoModel> findAll(int firstindex, int maxItem) {
        return userinfoDAO.findAll(firstindex, maxItem);
    }
    
}
