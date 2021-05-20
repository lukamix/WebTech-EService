
package DAO;

import Model.UserInfoModel;
import java.util.List;

public interface IUserInfoDAO extends GenericDAO<UserInfoModel> {
    UserInfoModel findUserInfoById(int userid);
    Long InsertUserInfo(String lastname,String email);
    UserInfoModel findUserInfoByEmail(String email);
    List<UserInfoModel> findAll(int firstindex,int maxItem);
}
