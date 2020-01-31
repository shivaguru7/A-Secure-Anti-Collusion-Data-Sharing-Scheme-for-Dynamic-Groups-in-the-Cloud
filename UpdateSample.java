/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DbPack;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author villain
 */
public class UpdateSample {
    public static boolean CheckTime(int b,int c) throws SQLException {
        Boolean bool = false;
        Map<String, Integer> map = new HashMap<String, Integer>();
        try {

            int tslot = b;
            int lcount= c;
            Connection con = DbPack.DatabaseConnection.getCon();
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("select * from register where tslot='"+ tslot +"'");
            while (rs.next()) {
                String uid = rs.getString("username");
                int cnt = Integer.parseInt(rs.getString("lcount"));
                map.put(uid, cnt);
                Integer min = Collections.min(map.values());
                System.out.println(min);
                if((lcount<=min)){
                   bool = true;
                }
            }
        } catch (Exception e) {
            bool = false;
        }
        return bool;
    }

}
