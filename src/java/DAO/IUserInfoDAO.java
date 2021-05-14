
package DAO;

import Model.UserInfoModel;

public interface IUserInfoDAO extends GenericDAO<UserInfoModel> {
    UserInfoModel findUserInfoById(int userid);
    Long InsertUserInfo(String lastname,String email);
    UserInfoModel findUserInfoByEmail(String email);
}
