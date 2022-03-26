
import java.sql.Connection;
import java.sql.DriverManager;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Admin
 */
public class contn {
    public Connection connect()
    {
        Connection con = null;
       try
       {  
Class.forName("com.mysql.jdbc.Driver");  
con=DriverManager.getConnection(  
"jdbc:mysql://localhost:3306/library_management","root","");  
//here is database name, root is username and password 

  
}
catch(Exception e)
{ System.out.println(e);} 
     return con;
    }
    
}

