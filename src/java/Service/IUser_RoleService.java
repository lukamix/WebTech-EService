package Service;

import Model.User_RoleModel;
 
public interface IUser_RoleService {
    User_RoleModel findUserRoleModelbyid(Integer user_id);
    void update(int userid,int roleid);
}
