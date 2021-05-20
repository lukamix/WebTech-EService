package DAO.impl;

import DAO.IRoleDAO;
import Mapper.RoleMapper;
import Model.RoleModel;
import java.util.List;

public class RoleDAO extends AbstractDAO<RoleModel> implements IRoleDAO{

    @Override
    public RoleModel getRolebyID(Integer id) {
        String sql = "SELECT * FROM Roles WHERE id=?";
        List<RoleModel> res = query(sql,new RoleMapper(),id);
        return res.isEmpty()?null:res.get(0);
    }

    @Override
    public RoleModel getRolebyName(String name) {
        String sql = "SELECT * FROM Roles WHERE name=?";
         List<RoleModel> res = query(sql,new RoleMapper(),name);
        return res.isEmpty()?null:res.get(0);
    }
}
