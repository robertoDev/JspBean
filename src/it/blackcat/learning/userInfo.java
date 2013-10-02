package it.blackcat.learning;

/**
 * Created with IntelliJ IDEA.
 * User: homeuser
 * Date: 01/10/13
 * Time: 17.29
 * To change this template use File | Settings | File Templates.
 */
public class userInfo {
  private String name = null;
  private String email = null;
  private int pages;

  public userInfo() { pages =0; }
  public void aggiornaPV() { pages++; }

  public int getPages(){ return pages; }

  public void setName(String value) { name = value; }
  public String getName() { return name; }

  public void setEmail(String value) { email = value; }

  public String getEmail() { return email; }

    public void setReset(String v){
        name =null;
        email=null;
        pages =0;
    }

    public String getReset(){
        return null;
    }

  public String getSummary(){
    String riassunto = null;
    riassunto = "user name is: "+ name +", ";
    riassunto+= "email address is: "+email +", ";
    riassunto+= " visit counter: "+ pages;
    return riassunto;
  }

}//InfoUtente