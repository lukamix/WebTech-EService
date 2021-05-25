package Service.impl;

import DAO.IUser_RoleDAO;
import DAO.impl.User_RoleDAO;
import Model.User_RoleModel;
import Service.IUser_RoleService;
 
public class User_RoleService implements IUser_RoleService{
    
    private IUser_RoleDAO user_roleDAO;
    public User_RoleService(){
        user_roleDAO = new User_RoleDAO();
    }
    @Override
    public User_RoleModel findUserRoleModelbyid(Integer user_id) {
        return user_roleDAO.findUserRoleModelbyid(user_id);
    }

    @Override
    public void update(int userid, int roleid) {
        user_roleDAO.update(userid, roleid);
    }
    
}
