package DAO;

import Model.UserModel;
import java.util.List;

public interface IUserDAO extends GenericDAO<UserModel>{
    UserModel findByUserNameAndPassword(String userName, String userpassword);
    UserModel findByUserName(String userName);
    UserModel findByUserID(int id);
    List<UserModel> finAll(int firstindex,int maxItem);
    int count();
    void delete(Integer userid);
    void update(String username,String userpassword,Integer userid);
    Long InsertUser(String username,String password,int userid);
}
