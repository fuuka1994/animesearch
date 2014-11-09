package animesearch.exception;

/**
 * Created by kradr_000 on 09/11/2014.
 */
public class DatabaseLoginFailedException extends Exception {
    public DatabaseLoginFailedException() {
        super("Possibly wrong username, password or database not exist.");
    }
}
