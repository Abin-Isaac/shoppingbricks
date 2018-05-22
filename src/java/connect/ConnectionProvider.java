package connect;
import java.sql.Connection;
import java.sql.DriverManager;
public final class ConnectionProvider
{
	static Connection conn= null;
	private ConnectionProvider()
	{
		
	}
	public static Connection getCon()
	{
		if(conn==null)
		{
			try
			{
				Class.forName("com.mysql.jdbc.Driver");
				conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/shoppingbricks","root","");
				
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
			return conn;
		}
		else
		{
			return conn;
		}
		    
	
	}
}