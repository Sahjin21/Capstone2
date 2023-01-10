package Business;

public class Chiropracter 
{
    private String id;
    private String fname;
    private String lname;
    private String email;
    private String password;
    private String phone;
    
    //Constructors
    
    Chiropracter()
    {
        id="";
        password = "";
        fname ="";
        lname="";
        phone="";
    }
    
    Chiropracter (String id, String fname ,String lname, String password,String email, String phone)
    {
        this.id = id;
        this.fname= fname;
        this.lname = lname;
        this.phone = phone;
        this.email = email;
        this.password = password;
    }
    
    //Setters
    public void setChiropractorFirstName(String fnme){fname = fnme;}
    public void setChiropractorLastName(String lnme){lname =lnme;}
    public void setChiropractorID(String chID) {id = chID;}
    public void setChiropractorPassword(String paswrd){password =paswrd;}
    public void setChiropractorPhone(String phne){phone = phne;}
    public void setChiropractorEmail(String eml) {email = eml;}
    
    //Getters
    public String getChiropractorID() {return id;}
    public String getChiropractorFirstName(){return fname;}
    public String getChiropractorLastName(){return lname;}
    public String getChiropractorPassword() {return password;}
    public String getChiropractorPhone() {return phone;}
    public String getChiropractorEmail() {return email;}
    
    //Display
    public void display()
    {
        System.out.println("Chiropractor ID: " + getChiropractorID());
        System.out.println("Name: "+getChiropractorFirstName() +" " + getChiropractorLastName());
        System.out.println("Email: "+getChiropractorEmail());
        System.out.println("Password: "+getChiropractorPassword());
        System.out.println("Phone: "+getChiropractorPhone());
    }
    
    
    //Main Method
    public static void main(String[] args) 
    {
            DbAccess d1;
            d1 = new DbAccess();
            d1.selectChiropractor("2");
            d1.c1.display();
        
    }

    
}
