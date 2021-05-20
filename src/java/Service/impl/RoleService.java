package Service.impl;

import DAO.IRoleDAO;
import DAO.impl.RoleDAO;
import Model.RoleModel;
import Service.IRoleService;
 
public class RoleService implements IRoleService{
 
    private IRoleDAO roleDAO;
    public RoleService(){
        roleDAO = new RoleDAO();
    }
    @Override
    public RoleModel getRolebyID(Integer id) {
        return roleDAO.getRolebyID(id);
    }

    @Override
    public RoleModel getRolebyName(String name) {
        return roleDAO.getRolebyName(name);
    }
}
