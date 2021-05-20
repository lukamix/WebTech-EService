package Mapper;

import Model.TiktokModel;
import java.sql.ResultSet;
import java.sql.SQLException;

public class TiktokMapper implements RowMapper<TiktokModel>{

    @Override
    public TiktokModel mapRow(ResultSet resultSet) {
        try{
            TiktokModel tk = new TiktokModel();
            tk.setTiktokid(resultSet.getInt("tiktokid"));
            tk.setHtml(resultSet.getString("html"));
            return tk;
        } catch(SQLException e){
            return null;
        }
    }
    
}
