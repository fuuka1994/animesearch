package animesearch.exception;

public class JDBCDriverNotFoundException extends Exception {
    public JDBCDriverNotFoundException() {
        super("Have you included the appropriate JDBC driver in this project?");
    }
}
