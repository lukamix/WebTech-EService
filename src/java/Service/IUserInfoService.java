package Service;

import Model.UserInfoModel;

public interface IUserInfoService {
    UserInfoModel findUserInfoById(int userid);
    Long InsertUserInfo(String lastname,String email);
    UserInfoModel findUserInfoByEmail(String email);
}
