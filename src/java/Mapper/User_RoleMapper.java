package Mapper;

import Model.User_RoleModel;
import java.sql.ResultSet;
import java.sql.SQLException;

public class User_RoleMapper implements RowMapper<User_RoleModel>{

    @Override
    public User_RoleModel mapRow(ResultSet resultSet) {
        try{
            User_RoleModel ur =new User_RoleModel();
            ur.setUser_id(resultSet.getInt("user_id"));
            ur.setRole_id(resultSet.getInt("role_id"));
            return ur;
        }
        catch(SQLException e){
            return null;
        }
    }
}
