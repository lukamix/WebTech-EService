package DAO;

import Model.User_RoleModel;

public interface IUser_RoleDAO extends GenericDAO<User_RoleModel> {
    User_RoleModel findUserRoleModelbyid(Integer user_id);
    void update(int userid,int roleid);
}
