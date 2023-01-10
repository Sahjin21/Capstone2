/***************************************************************
 *  This class accesses the database files. 
 *  The location should be changed for each team member 
 *  to point to their local db file.
 **************************************************************/
package Business;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;


public class DbAccess
{
    /***************************************************************
    *  Search the Database file.  
    * 
    **************************************************************/
    
    /********************Properties****************/
    private String patId, chiroId;
    public Patient p1 = new Patient();
    public Chiropracter c1 = new Chiropracter();
    String DBlocation = "jdbc:ucanaccess:///Users/lalu/Classes/Senior Project/Capstone/ChiropracterWebApplication/ChiropracticDB.accdb";
    String DBlocation2 ="jdbc:ucanaccess://C:/Users/Jaru/Documents/GitHub/Capstone/ChiropracterWebApplication/ChiropracticDB.accdb";
    
    /********************Behaviors****************/
    
    public void DbAccess()
    {
        patId = "";
        chiroId = "";
    }
    
    public void DbAccess(String patId, String chiroId)
    {
        this.patId=patId;
        this.chiroId=chiroId;
    }
    /********************Patient Class DB Functions****************/
    
    /***************************************************************
    *  Selects a database entry for a Patient in db Patient table
    **************************************************************/
    public void selectPatient(String pid) 
        {
            try 
            { 
            //Load Driver - Step #1
                Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
            //Get Connection from the Driver - Step #2
                Connection c1;
                c1=DriverManager.getConnection(DBlocation);
                

            //Create a Statement - Step #3
               Statement stmt = c1.createStatement();
               ResultSet rs = stmt.executeQuery("Select * from Patients where patID = '" + pid + "'");
            //Process ResultSet

            rs.next();
            patId = rs.getString(1);
            String passwd = rs.getString(2);
            String firstName = rs.getString(3);
            String lastName = rs.getString(4);
            String email = rs.getString(5);
            String phone = rs.getString(6);
            
            p1.setPatientID(pid);
            p1.setPatientPW(passwd);
            p1.setPatientFirstName(firstName);
            p1.setPatientLastName(lastName);
            p1.setPatientEmail(email);
            p1.setPatientPhone(phone);
            c1.close();
            }
                catch(Exception se) 
                {
                System.out.println(se);
                }
        } //end selectPatient()
    
    /***************************************************************
    *  Inserts a database entry for a new Patient in db Patient table
    **************************************************************/
    
    public void insertPatientDB(String id, String pw, String fn, String ln, String em, String ph){     
        p1.setPatientID(id);
        p1.setPatientPW(pw);
        p1.setPatientFirstName(fn);
        p1.setPatientLastName(ln);
        p1.setPatientEmail(em);
        p1.setPatientPhone(ph);

        try{
            Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
            Connection con = DriverManager.getConnection("jdbc:ucanaccess:///Users/lalu/Classes/Senior Project/Capstone/ChiropracterWebApplication/ChiropracticDB.accdb");
            
            Statement stmt = con.createStatement();
            String sql = "Insert into Patients values('"+p1.getPatientID()+"',"+
                                                      "'"+p1.getPatientPW()+"',"+ 
                                                      "'"+p1.getPatientFirstName()+"',"+ 
                                                      "'"+p1.getPatientLastName()+"',"+ 
                                                      "'"+p1.getPatientEmail()+"',"+ 
                                                      "'"+p1.getPatientPhone()+"')"; 

            System.out.println(sql);
            int n1 = stmt.executeUpdate(sql);
            if (n1==1)
                System.out.println("INSERT Successful!!!");
            else
                System.out.println("INSERT FAILED***********");
            con.close();
        }
        catch(Exception e1){
            System.out.println(e1);
        }
      
    }//end insertPatientDB()
    
    /***************************************************************
 *  Update an existing Patient entry in db Patient table
 **************************************************************/
public void updatePatientDB(){
         
       
        try{
           Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
            Connection con=DriverManager.getConnection("jdbc:ucanaccess:///Users/lalu/Classes/Senior Project/Capstone/ChiropracterWebApplication/ChiropracticDB.accdb");
            
            Statement stmt = con.createStatement();
            String sql = "update Patients set firstName = '"+p1.getPatientFirstName()+ "',"+ 
                                            " lastName ='"+p1.getPatientLastName()+"',"+
                                            " email = '"+p1.getPatientEmail()+"',"+
                                            " patID ='"+p1.getPatientID()+"',"+
                                            " password = '"+p1.getPatientPW()+"',"+
                                            " phone = '"+p1.getPatientPhone()+"'"+
                                            " where patID='"+p1.getPatientID()+"'";
 
            System.out.println(sql);
            int n = stmt.executeUpdate(sql);
            if (n==1)
                System.out.println("UPDATE Successful!!!");
            else
                System.out.println("UPDATE FAILED***********");
            con.close();
        }
        catch(Exception e1){
            System.out.println(e1);
        }
      
    }//end updatePatientDB()

/***************************************************************
 *  Deletes existing Patient entry
 **************************************************************/        
        public void deletePatientDB(){
                
        try{
            Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
            Connection con=DriverManager.getConnection("jdbc:ucanaccess:///Users/lalu/Classes/Senior Project/Capstone/ChiropracterWebApplication/ChiropracticDB.accdb");
            
            Statement stmt = con.createStatement();
            String sql = "Delete from Patients where patID='"+ p1.getPatientID()+"'";
            System.out.println(sql);
            int n = stmt.executeUpdate(sql);
            if (n==1)
                System.out.println("DELETE Successful!!!");
            else
                System.out.println("DELETE FAILED***********");
            con.close();
        }
        catch(Exception e1){
            System.out.println(e1);
            }
        
        }//end deletePatientDB()
        
        
        
        
    //////////////Chiropracter class DB Fuctions//////////
        
        
     
    //Select Chiropracter from db     
    public void selectChiropractor(String cid)
    {
        try
        {
            //Load Driver - Step #1
                Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
            //Get Connection from the Driver - Step #2
                Connection con;
                con=DriverManager.getConnection("jdbc:ucanaccess:///Users/lalu/Classes/Senior Project/Capstone/ChiropracterWebApplication/ChiropracticDB.accdb");
                

            //Create a Statement - Step #3
               Statement stmt = con.createStatement();
               ResultSet rs = stmt.executeQuery("Select * from Chiropractors where chiroId = '" + cid + "'");
            //Process ResultSet
            
            rs.next();
            chiroId = rs.getString(1);
            String password = rs.getString(2);
            String firstName = rs.getString(3);
            String lastName = rs.getString(4);
            String email = rs.getString(5);
            String phone = rs.getString(6);
            
            c1.setChiropractorID(chiroId);
            c1.setChiropractorPassword(password);
            c1.setChiropractorFirstName(firstName);
            c1.setChiropractorLastName(lastName);
            c1.setChiropractorEmail(email);
            c1.setChiropractorPhone(phone);
            con.close();
            
        }
        catch(Exception re)
        {
            System.out.println(re);
        }
    }
    
    
    //Insert information into Chiropractor db
     public void insertChiropractorDB(String id, String pw, String fn, String ln, String em, String ph)
     {     
        c1.setChiropractorID(id);
        c1.setChiropractorPassword(pw);
        c1.setChiropractorFirstName(fn);
        c1.setChiropractorLastName(ln);
        c1.setChiropractorEmail(em);
        c1.setChiropractorPhone(ph);

        try
        {
            Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
            Connection con=DriverManager.getConnection("jdbc:ucanaccess:///Users/lalu/Classes/Senior Project/Capstone/ChiropracterWebApplication/ChiropracticDB.accdb");
            
            Statement stmt = con.createStatement();
            String sql = "Insert into Chiropractors values('"+c1.getChiropractorID()+"',"+
                                                      "'"+c1.getChiropractorPassword()+"',"+ 
                                                      "'"+c1.getChiropractorFirstName()+"',"+ 
                                                      "'"+c1.getChiropractorLastName()+"',"+ 
                                                      "'"+c1.getChiropractorEmail()+"',"+ 
                                                      "'"+c1.getChiropractorPhone()+"')"; 

            System.out.println(sql);
            int n1 = stmt.executeUpdate(sql);
            if (n1==1)
                System.out.println("INSERT Successful!!!");
            else
                System.out.println("INSERT FAILED***********");
            con.close();
        }
        catch(Exception te)
        {
            System.out.println(te);
        }
    }
    
     
    //Update information inside of Chiropractor DB
    public void updateChiropractorDB(){
         
       
        try
        {
           Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
            Connection con=DriverManager.getConnection("jdbc:ucanaccess:///Users/lalu/Classes/Senior Project/Capstone/ChiropracterWebApplication/ChiropracticDB.accdb");
            
            Statement stmt = con.createStatement();
            String sql = "update Chiropractors set firstName = '"+c1.getChiropractorFirstName()+ "',"+ 
                                            " lastName ='"+c1.getChiropractorLastName()+"',"+
                                            " email = '"+c1.getChiropractorEmail()+"',"+
                                            " patID ='"+c1.getChiropractorID()+"',"+
                                            " password = '"+c1.getChiropractorPassword()+"',"+
                                            " phone = '"+c1.getChiropractorPhone()+"'"+
                                            " where chiroID='"+c1.getChiropractorID()+"'";
 
            System.out.println(sql);
            int n = stmt.executeUpdate(sql);
            if (n==1)
                System.out.println("UPDATE Successful!!!");
            else
                System.out.println("UPDATE FAILED***********");
            con.close();
        }
        catch(Exception d)
        {
            System.out.println(d);
        }
    }
     
    // Delete Chiropractor information from DB
    public void deleteChiropractorDB(){
                
        try
        {
            Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
            Connection con=DriverManager.getConnection("jdbc:ucanaccess:///Users/lalu/Classes/Senior Project/Capstone/ChiropracterWebApplication/ChiropracticDB.accdb");
            
            Statement stmt = con.createStatement();
            String sql = "Delete from Chiropractors where chiroId='"+ c1.getChiropractorID()+"'";
            System.out.println(sql);
            int n = stmt.executeUpdate(sql);
            if (n==1)
                System.out.println("DELETE Successful!!!");
            else
                System.out.println("DELETE FAILED***********");
            con.close();
        }
        catch(Exception e1){
            System.out.println(e1);
            }
        
        }
    
           
        
        
        
        public static void main(String args[]) 
        {
            
            /************Select and Display test*****************/
            //DbAccess d1;
            //d1 = new DbAccess();
            //d1.selectChiropractor("1");
            //d1.c1.display();  
            
            /************Insert test*****************/

            //DbAccess d1;
            //d1 = new DbAccess();
            //d1.insertChiropractorDB("6", "4321", "Jack", "Thompson", "JackThompson@mail.com", "770-555-5555");
            //d1.c1.display();
            
            /************Update test*****************/
            //DbAccess d1;
            //d1 = new DbAccess();
            //d1.selectChiropractor("6");
            //d1.c1.setChiropractorFirstName("Sam");
            //d1.c1.setChiropractorPhone("678-555-5555");
            //d1.c1.setChiropractorEmail("samthompson@mail.com");           
            //d1.updateChiropractorDB();
            //d1.c1.display();
            /************Delete test*****************/
            //DbAccess d1;
            //d1 = new DbAccess();
            //d1.selectChiropractor("1");
            //d1.deleteChiropractorDB();

        
        }
}
