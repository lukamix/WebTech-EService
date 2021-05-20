package Mapper;

import Model.UserModel;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserMapper implements RowMapper<UserModel> {

    @Override
    public UserModel mapRow(ResultSet resultSet) {
       try {
            UserModel user = new UserModel();
            user.setUserid(resultSet.getInt("userid"));
            user.setUsername(resultSet.getString("username"));
            user.setUserpassword(resultSet.getString("userpassword"));
            return user;
        }catch (SQLException e) {
            return null;
        }
    }
    
}
