/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Service.impl;

import DAO.IUserDAO;
import DAO.impl.UserDAO;
import Model.UserModel;
import Service.IUserService;

/**
 *
 * @author PV
 */
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
    
}
