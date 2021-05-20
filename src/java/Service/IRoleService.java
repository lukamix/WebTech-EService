package Service;

import Model.RoleModel;

public interface IRoleService {
    RoleModel getRolebyID(Integer id);
    RoleModel getRolebyName(String name);
}
