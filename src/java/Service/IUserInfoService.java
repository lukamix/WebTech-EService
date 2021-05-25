package Service;

import Model.UserInfoModel;
import java.util.List;

public interface IUserInfoService {
    UserInfoModel findUserInfoById(int userid);
    Long InsertUserInfo(String lastname,String email);
    UserInfoModel findUserInfoByEmail(String email);
    List<UserInfoModel> findAll(int firstindex,int maxItem);
}
