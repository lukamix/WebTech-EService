package Mapper;

import Model.RoleModel;
import java.sql.ResultSet;
import java.sql.SQLException;

public class RoleMapper implements RowMapper<RoleModel>{

    @Override
    public RoleModel mapRow(ResultSet resultSet) {
        try{
            RoleModel res = new RoleModel();
            res.setId(resultSet.getInt("id"));
            res.setName(resultSet.getString("name"));
            return res;
        }
        catch(SQLException e){
            return null;
        }
    }
}
