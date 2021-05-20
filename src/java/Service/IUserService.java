package Service;

import Model.UserModel;
import java.util.List;

public interface IUserService {
    UserModel findByUserNameAndPassword(String userName, String userpassword);
    UserModel findByUserName(String userName);
    UserModel findByUserID(int id);
    List<UserModel> finAll(int firstindex,int maxItem);
    int count();
    Long InsertUser(String username,String password,int userid);
    void delete(Integer userid);
    void update(String username,String userpassword,Integer userid);
}
