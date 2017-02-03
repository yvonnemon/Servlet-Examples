package jdbc;

//STEP 1. Import required packages
import org.apache.commons.dbcp.BasicDataSource;

import java.sql.*;

public class PoolExample {
    // JDBC driver name and database URL
    static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
    static final String DB_URL = "jdbc:mysql://localhost/mysql";

    //  Database credentials
    static final String USER = "root";
    static final String PASS = "test";

    public static void main(String[] args) {
        Connection conn = null;
        Statement stmt = null;
        BasicDataSource pool = new BasicDataSource();

        try{
            //STEP 3: Open a connection
            pool.setDriverClassName(JDBC_DRIVER);
            pool.setUsername(USER);
            pool.setPassword(PASS);
            pool.setUrl(DB_URL);

            pool.setInitialSize(5);
            pool.setMaxIdle(2);

            conn = pool.getConnection();

            //STEP 4: Execute a query
            System.out.println("Creating statement...");
            stmt = conn.createStatement();
            String sql;
            sql = "SELECT * FROM user";
            ResultSet rs = stmt.executeQuery(sql);

            //STEP 5: Extract data from result set
            while(rs.next()){
                //Retrieve by column name
                String host = rs.getString("host");
                String user = rs.getString("user");

                //Display values
                System.out.println("Host: " + host);
                System.out.println("user: " + user);
            }
            //STEP 6: Clean-up environment

            rs.close();

        }catch(SQLException se){
            //Handle errors for JDBC
            se.printStackTrace();
        }catch(Exception e){
            //Handle errors for Class.forName
            e.printStackTrace();
        }finally{
            //finally block used to close resources
            try{
                if(stmt!=null)
                    stmt.close();
            }catch(SQLException se2){
            }// nothing we can do
            try{
                if(conn!=null)
                    conn.close();
            }catch(SQLException se){
                se.printStackTrace();
            }//end finally try
        }//end try
        System.out.println("Goodbye!");
    }//end main
}//end FirstExample