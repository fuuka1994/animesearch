package animesearch.model;

import animesearch.exception.JDBCDriverNotFoundException;
import animesearch.exception.LoginFailedException;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

/**
 * Provide API for accessing underlying app database.
 */
public class DatabaseManager {
    private static final String JDBC_DRIVER = "org.postgresql.Driver";
    private static final String DB_PATH = "jdbc:postgresql://localhost:5432/animedb";

    private Connection connection_;
    private Statement statement_;
    private SearchFilter searchFilter_;

    public DatabaseManager() throws JDBCDriverNotFoundException {
        try {
            Class.forName(JDBC_DRIVER);
        }
        catch (ClassNotFoundException e) {
            throw new JDBCDriverNotFoundException();
        }
    }

    public void login(String username, String password) throws LoginFailedException {
        try {
            connection_ = DriverManager.getConnection(DB_PATH, username, password);
        }
        catch (SQLException e) {
            throw new LoginFailedException();
        }
    }

    // Always call this function if you no longer use the database
    public void closeSession() {
        try {
            if (statement_ != null)
                statement_.close();
            if (connection_ != null)
                connection_.close();
        }
        catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void setSearchFilter(SearchFilter searchFilter) {
        searchFilter_ = searchFilter;
    }

    public static void main(String[] args) {
        DatabaseManager manager = null;
        try {
            manager = new DatabaseManager(); //DatabaseManager.getInstance();
        }
        catch (JDBCDriverNotFoundException e) {
            e.printStackTrace();
        }

        if (manager != null) {
            try {
                manager.login("postgres", "123456");
                manager.closeSession();
            }
            catch (LoginFailedException e) {
                e.printStackTrace();
            }
        }
    }
}
