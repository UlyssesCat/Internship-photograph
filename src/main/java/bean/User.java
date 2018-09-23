package bean;

public class User {


    private String uid;
    private String user;
    private String password;

    public String getUid() {
        return uid;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }




    public void setUserData(String usename, String password, String uid) {
        this.uid = uid;
        this.user = user;
        this.password = password;
    }


    public User(String uid, String user, String password) {
        this.uid = uid;
        this.user = user;
        this.password = password;
    }


    public User() {
    }







}
