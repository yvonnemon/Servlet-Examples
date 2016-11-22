package user;

/**
 * @author Xavi Torrens
 */
public class User {



    private String name;

    public User(String name){
        this.name = name;
    }


    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String nameToUpperCase(){
        return name.toUpperCase();
    }

    public void toUpperCase(){
         name.toUpperCase();
    }
}
