package DAO.impl;

import DAO.IUserDAO;
import Mapper.UserMapper;
import Model.UserModel;
import java.util.List;

public class UserDAO extends AbstractDAO<UserModel> implements IUserDAO {

    @Override
    public UserModel findByUserNameAndPassword(String userName, String userpassword) {
        StringBuilder sql = new StringBuilder("SELECT * FROM Users AS u");
        sql.append(" WHERE username = ? AND userpassword = ?");
        List<UserModel> users = query(sql.toString(), new UserMapper(), userName, userpassword);
        return users.isEmpty() ? null : users.get(0);
    }
    @Override
    public UserModel findByUserName(String userName) {
        StringBuilder sql = new StringBuilder("SELECT * FROM Users AS u");
        sql.append(" WHERE username = ?");
        List<UserModel> users = query(sql.toString(), new UserMapper(), userName);
        return users.isEmpty() ? null : users.get(0);
    }
    @Override
    public Long InsertUser(String username,String password,int userid){
        String sql = "INSERT INTO Users (username, userpassword, userid) VALUES (?,?,?)";
        Long returnvalue = insert(sql,username,password,userid);
        return returnvalue;
    }

    @Override
    public UserModel findByUserID(int id) {
        StringBuilder sql = new StringBuilder("SELECT * FROM Users AS u");
        sql.append(" WHERE id = ?");
        List<UserModel> users = query(sql.toString(), new UserMapper(), id);
        return users.isEmpty() ? null : users.get(0);
    }

    @Override
    public List<UserModel> finAll(int firstindex,int maxItem) {
        String sql = "SELECT * FROM Users LIMIT ?,?";
        return query(sql,new UserMapper(),firstindex,maxItem);
    }

    @Override
    public int count() {
        String sql = "SELECT Count(userid) from Users";
        return count(sql);
    }
    
    @Override
    public void delete(Integer userid){
        String sql = "DELETE FROM Users WHERE userid=?";
        delete(sql,userid);
    }
    @Override
    public void update(String username,String userpassword,Integer userid){
        String sql = "UPDATE Users SET username=?, userpassword=? WHERE userid=?";
        update(sql,username,userpassword,userid);
    }
}
