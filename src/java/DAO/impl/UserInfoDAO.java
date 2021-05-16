package DAO.impl;

import DAO.IUserInfoDAO;
import Mapper.UserInfoMapper;
import Model.UserInfoModel;
import java.util.List;

public class UserInfoDAO extends AbstractDAO<UserInfoModel> implements IUserInfoDAO {

    @Override
    public UserInfoModel findUserInfoById(int userid) {
        StringBuilder sql = new StringBuilder("SELECT * FROM UserInfo AS u");
        sql.append(" WHERE id = ?");
        List<UserInfoModel> users = query(sql.toString(), new UserInfoMapper(), userid);
        return users.isEmpty() ? null : users.get(0);
    }

    @Override
    public Long InsertUserInfo(String lastname, String email) {
        String sql = "INSERT INTO UserInfo (lastname, email) VALUES (?,?)";
        Long returnvalue = insert(sql, lastname, email);
        return returnvalue;
    }

    @Override
    public UserInfoModel findUserInfoByEmail(String email) {
        StringBuilder sql = new StringBuilder("SELECT * FROM UserInfo AS u");
        sql.append(" WHERE email = ?");
        List<UserInfoModel> users = query(sql.toString(), new UserInfoMapper(), email);
        return users.isEmpty() ? null : users.get(0);
    }
    
}
