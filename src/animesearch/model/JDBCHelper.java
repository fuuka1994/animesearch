package animesearch.model;

import animesearch.exception.DatabaseLoginFailedException;
import animesearch.exception.JDBCDriverNotFoundException;

import java.sql.*;
import java.util.ArrayList;

/**
 * Provide wrapper for accessing under-laying database
 */
public class JDBCHelper {

    private static final String JDBC_DRIVER = "org.postgresql.Driver";
    private static final String DB_PATH = "jdbc:postgresql://localhost:5432/animedb";
    private static final String ENGLISH_TITLE_COLUMN = "english_title";
    private static final String ROMAJI_TITLE_COLUMN = "romaji_title";
    private static final String SEASON_COLUMN = "season";
    private static final String PRODUCER_COLUMN = "producer";
    private static final String RELEASE_DATE_COLUMN = "release_date";
    private static final String DESCRIPTION_COLUMN = "description";

    private Connection connection = null;
    private Statement statement = null;

    public JDBCHelper() {
        try {
            Class.forName(JDBC_DRIVER);
        }
        catch (ClassNotFoundException e) {
            throw new JDBCDriverNotFoundException();
        }
    }

    public void connectDatabase(String username, String password) throws DatabaseLoginFailedException {
        try {
            connection = DriverManager.getConnection(DB_PATH, username, password);
        }
        catch (SQLException e) {
            throw new DatabaseLoginFailedException();
        }
    }

    public void closeDatabase() {
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

    public ArrayList<String> getAvailableGenre() {
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

    public ArrayList<AnimeInfo> queryAnime(String query) {
        ArrayList<AnimeInfo> animeList = new ArrayList<AnimeInfo>();
        try {
            ResultSet resultSet = statement.executeQuery(query);
            while (resultSet.next()) {
                AnimeInfo animeInfo = new AnimeInfo();

                animeInfo.englishTitle = resultSet.getString(ENGLISH_TITLE_COLUMN);
                animeInfo.romajiTitle = resultSet.getString(ROMAJI_TITLE_COLUMN);
                animeInfo.season = resultSet.getString(SEASON_COLUMN);
                animeInfo.producer = resultSet.getString(PRODUCER_COLUMN);
                animeInfo.releaseDate = resultSet.getString(RELEASE_DATE_COLUMN);

                String description = resultSet.getString(DESCRIPTION_COLUMN);
                if (description != null) {
                    animeInfo.description = description;
                }
                animeList.add(animeInfo);
            }
            resultSet.close();
        }
        catch (SQLException e) {
            e.printStackTrace();
        }
        return animeList;
    }
}
