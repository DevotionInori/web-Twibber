package com.devotion;

import java.sql.*;
import java.util.*;

public class TwibberDao {
    public static String drivername = "com.mysql.cj.jdbc.Driver";
    public static String url = "jdbc:mysql://localhost:3306/SongYadong?useUnicode=true&characterEncoding=utf8&useSSL=false&serverTimezone=GMT";

    public static Connection getConnection() throws ClassNotFoundException, SQLException {
        Class.forName(drivername);//加载
        //指定用户名和密码
        Connection con = DriverManager.getConnection(url, "root", "990325");
        return con;
    }
    public List<Twibber> executeQueryForList(String sql) throws SQLException, ClassNotFoundException {
        System.err.println(sql);
        Connection conn = getConnection();
        //创建Statement对象
        Statement stmt = conn.createStatement();
        //执行sql语句
        ResultSet rs=stmt.executeQuery(sql);
        //authorid = "1";

        List<Twibber> list = new ArrayList<>();
        while(rs.next())
        {
            list.add(new Twibber(Integer.parseInt(rs.getString("id")),Integer.parseInt(rs.getString("publisherId")),
                    rs.getString("content"),Integer.parseInt(rs.getString("year")),
                    Integer.parseInt(rs.getString("month")),Integer.parseInt(rs.getString("day")),
                    Integer.parseInt(rs.getString("hour")),Integer.parseInt(rs.getString("minute"))));

        }
        Collections.reverse(list);
        conn.close();
        return list;
    }

    public void executeAddForList(String input) throws SQLException, ClassNotFoundException {
        Connection con = getConnection();
        //创建Statement对象
        Statement statement = con.createStatement();
        ResultSet rs=statement.executeQuery("SELECT * from Twibber");
        int i=0;
        while(rs.next())
        {
            i=Integer.parseInt(rs.getString("id"));
        }
        i++;
        PreparedStatement ps =con.prepareStatement("insert into Twibber(id,publisherId,content,year,month,day,hour,minute)" +
                " values(?,?,?,?,?,?,?,?)");
        ps.setString(1,""+i);
        ps.setString(2,"1");
        ps.setString(3,input);
        Calendar calendar=Calendar.getInstance();
        ps.setString(4,""+calendar.get(Calendar.YEAR));
        ps.setString(5,""+calendar.get(Calendar.MONTH));
        ps.setString(6,""+calendar.get(Calendar.DAY_OF_MONTH));
        ps.setString(7,""+calendar.get(Calendar.HOUR_OF_DAY));
        ps.setString(8,""+calendar.get(Calendar.MINUTE));
        ps.executeUpdate();

    }
    public void executeDelForList(int id) throws SQLException, ClassNotFoundException {
        Connection con = getConnection();
        //创建Statement对象
        Statement statement = con.createStatement();
        PreparedStatement ps =con.prepareStatement("delete from Twibber where id =" +
                id);
        ps.executeUpdate();
    }


}