public class NameInStars {
    //data field
    private String name;

    //Constructor methods
    public NameInStars(String n) {
        name = n;
    }

    public String surroundNameInStars() {
        return "********" + name + "********\n" +
               "********" + name + "********\n" +
               "********" + name + "********";
    }
} //endclass
