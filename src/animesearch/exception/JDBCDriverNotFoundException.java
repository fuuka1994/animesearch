package animesearch.exception;

public class JDBCDriverNotFoundException extends RuntimeException {
    public JDBCDriverNotFoundException() {
        super("Have you included the appropriate JDBC driver in this project?");
    }
}
