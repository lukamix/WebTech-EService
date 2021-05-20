package DAO;

import Model.RoleModel;

public interface IRoleDAO extends GenericDAO<RoleModel>{
    RoleModel getRolebyID(Integer id);
    RoleModel getRolebyName(String name);
}
