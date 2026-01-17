import javax.swing.*;
public class ShowNameInStars {
public static void main(String[] args) {
String username = JOptionPane.showInputDialog("Enter your name");
//create object
NameInStars you = new NameInStars(username);
//display
JOptionPane.showMessageDialog(null,you.surroundNameInStars());
} //endmain
}//endclass