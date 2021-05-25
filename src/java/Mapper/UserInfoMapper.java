package Mapper;

import Model.UserInfoModel;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserInfoMapper implements RowMapper<UserInfoModel>{

    @Override
    public UserInfoModel mapRow(ResultSet resultSet) {
        try {
			UserInfoModel userinfo = new UserInfoModel();
			userinfo.setUserid(resultSet.getInt("id"));
			userinfo.setFirstname(resultSet.getString("firstname"));
			userinfo.setLastname(resultSet.getString("lastname"));
			userinfo.setEmail(resultSet.getString("email"));
			userinfo.setAvatarlink(resultSet.getString("avatarlink"));
			userinfo.setUserstatus(resultSet.getInt("userstatus"));
                        userinfo.setAuth(resultSet.getString("auth"));
			return userinfo;
        } catch (SQLException e) {
            return null;
        }
    }
}
