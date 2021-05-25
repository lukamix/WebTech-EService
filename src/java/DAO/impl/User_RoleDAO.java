package DAO.impl;

import DAO.IUser_RoleDAO;
import Mapper.User_RoleMapper;
import Model.User_RoleModel;
import java.util.List;

public class User_RoleDAO extends AbstractDAO<User_RoleModel> implements IUser_RoleDAO{

    @Override
    public User_RoleModel findUserRoleModelbyid(Integer user_id) {
        String sql = "SELECT * FROM user_role WHERE user_id=?";
        List<User_RoleModel> res = query(sql,new User_RoleMapper(),user_id);
        return res.isEmpty()?null:res.get(0);
    }

    @Override
    public void update(int userid, int roleid) {
        String sql = "UPDATE user_role SET role_id = ? WHERE user_id = ?";
        update(sql,roleid,userid);
    }
}
