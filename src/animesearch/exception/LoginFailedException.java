package animesearch.exception;

import java.sql.SQLException;

public class LoginFailedException extends SQLException {
    public LoginFailedException() {
        super("Please check for correct input combination of username and password!");
    }
}
