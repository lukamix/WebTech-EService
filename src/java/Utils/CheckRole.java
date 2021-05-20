package Utils;

import Model.RoleModel;
import Model.UserModel;
import Model.User_RoleModel;
import Service.impl.RoleService;
import Service.impl.UserService;
import Service.impl.User_RoleService;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

public class CheckRole {
    private static final String USER = "ROLE_USER";
    private static final String ADMIN = "ROLE_ADMIN";
    private static CheckRole Instance=new CheckRole();;
    private UserService us;
    private User_RoleService urs;
    private RoleService rs;
    public static CheckRole getInstance(){
        return Instance;
    };
    private CheckRole(){
        us=new UserService();
        urs=new User_RoleService();
        rs=new RoleService();
    }
    public boolean byUserNameAndPassword(String username,String password){
        UserModel um =us.findByUserNameAndPassword(username, password);
        User_RoleModel urm = urs.findUserRoleModelbyid(um.getUserid());
        RoleModel rm = rs.getRolebyID(urm.getRole_id());
        return rm.getName().equals(ADMIN);
    }
    
    public List<String> getCookie(HttpServletRequest request){
        Cookie cookie;
        Cookie[] cookies;
        cookies = request.getCookies();
        String username ="";
        String password ="";
        if (cookies != null) {
            for(int i = 0; i < cookies.length; i++) {
                cookie = cookies[i];
                if ((cookie.getName()).compareTo("username") == 0) {
                    username = cookie.getValue();
                }
                else if((cookie.getName()).compareTo("password") == 0){
                    password = cookie.getValue();
                }
            }
        }
        List<String> res = new ArrayList<>();
        res.add(username);
        res.add(password);
        return res;
    }
}
