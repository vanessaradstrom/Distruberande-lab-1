package db;

public class UserDB {

    public static boolean login(String username, String password) {

        if (username.equals("admin") && password.equals("123")) {
            return true;
        }

        return false;
    }
}
