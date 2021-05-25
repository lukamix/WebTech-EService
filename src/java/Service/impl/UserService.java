package Service.impl;

import DAO.IUserDAO;
import DAO.impl.UserDAO;
import Model.UserModel;
import Service.IUserService;
import java.util.List;
 
public class UserService implements IUserService{
 
    private IUserDAO userDAO;

    public UserService() {
        userDAO = new UserDAO();
    }
    
    @Override
    public UserModel findByUserNameAndPassword(String userName, String userpassword) {
        return userDAO.findByUserNameAndPassword(userName, userpassword);
    }

    @Override
    public UserModel findByUserName(String userName) {
        return userDAO.findByUserName(userName);
    }

    @Override
    public Long InsertUser(String username, String password,int userid) {
        return userDAO.InsertUser(username, password, userid);
    }

    @Override
    public UserModel findByUserID(int id) {
        return userDAO.findByUserID(id);
    }

    @Override
    public List<UserModel> finAll(int firstindex, int maxItem) {
        return userDAO.finAll(firstindex, maxItem);
    }

    @Override
    public int count() {
        return userDAO.count();
    }

    @Override
    public void delete(Integer userid) {
        userDAO.delete(userid);
    }

    @Override
    public void update(String username, String userpassword, Integer userid) {
        userDAO.update(username, userpassword, userid);
    }
    
}
