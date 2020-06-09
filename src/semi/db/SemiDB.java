package semi.db;

import java.sql.Connection;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class SemiDB {

   static DataSource ds; 
   
   static {
      try {
         Context initContext = new InitialContext();
         Context envContext  = (Context)initContext.lookup("java:/comp/env");
         ds = (DataSource)envContext.lookup("jdbc/myoracle");
      }catch(Exception e) {
         e.printStackTrace();
      }
   }
   
   public static Connection getCon()throws Exception{
      
      return ds.getConnection();
   }
}