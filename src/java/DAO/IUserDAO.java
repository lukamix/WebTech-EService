package DAO;

import Model.UserModel;

public interface IUserDAO extends GenericDAO<UserModel>{
    UserModel findByUserNameAndPassword(String userName, String userpassword);
    UserModel findByUserName(String userName);
    UserModel findByUserID(int id);
    Long InsertUser(String username,String password,int userid);
}
