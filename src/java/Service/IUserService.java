package Service;

import Model.UserModel;

public interface IUserService {
    UserModel findByUserNameAndPassword(String userName, String userpassword);
    UserModel findByUserName(String userName);
    UserModel findByUserID(int id);
    Long InsertUser(String username,String password,int userid);
}
