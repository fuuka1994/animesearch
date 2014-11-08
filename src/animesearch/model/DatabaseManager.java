package animesearch.model;

import animesearch.exception.JDBCDriverNotFoundException;
import animesearch.exception.LoginFailedException;

import java.sql.*;
import java.util.ArrayList;

/**
 * Provide API for accessing underlying app database.
 */
public class DatabaseManager {
    private static final String JDBC_DRIVER = "org.postgresql.Driver";
    private static final String DB_PATH = "jdbc:postgresql://localhost:5432/animedb";

    private Connection connection = null;
    private Statement statement = null;
    private SearchFilter searchFilter;

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
            connection = DriverManager.getConnection(DB_PATH, username, password);
        }
        catch (SQLException e) {
            throw new LoginFailedException();
        }
    }

    // Always use this method to obtain the app filter, don't manually instantiate a SearchFilter
    public SearchFilter getSearchFilter() {
        if (searchFilter == null) {
            searchFilter = new SearchFilter();
            searchFilter.addListOfGenre(getAvailableGenreFromDatabase());
        }
        return searchFilter;
    }

    private ArrayList<String> getAvailableGenreFromDatabase() {
        if (statement == null)
            initializeStatement();

        ArrayList<String> availableGenre = new ArrayList<String>();
        try {
            String query = "SELECT DISTINCT tag FROM \"Genre\"";
            ResultSet resultSet = statement.executeQuery(query);
            while (resultSet.next()) {
                availableGenre.add(resultSet.getString("tag"));
            }
            resultSet.close();
        }
        catch (SQLException e) {
            e.printStackTrace();
        }

//        for (String genre : availableGenre) {
//            System.out.println(genre);
//        }
        return availableGenre;
    }

    private void initializeStatement() {
        try {
            statement = connection.createStatement();
        }
        catch (SQLException e) {
            e.printStackTrace();
        }
    }

    // Remember to call this method if you no longer use the database
    public void closeSession() {
        try {
            if (statement != null)
                statement.close();
            if (connection != null)
                connection.close();
        }
        catch (SQLException e) {
            e.printStackTrace();
        }
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
                SearchFilter filter = manager.getSearchFilter();
                manager.closeSession();
            }
            catch (LoginFailedException e) {
                e.printStackTrace();
            }
        }
    }
}
