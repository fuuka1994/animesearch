package animesearch.model;

import animesearch.exception.DatabaseLoginFailedException;
import animesearch.exception.JDBCDriverNotFoundException;

import java.sql.*;
import java.util.ArrayList;

/**
 * Provide wrapper for accessing under-laying database
 * All methods are in package scope
 */
public class JDBCHelper {

    private static final String JDBC_DRIVER = "org.postgresql.Driver";
    private static final String DB_PATH = "jdbc:postgresql://localhost:5432/animedb";

    private static final String ID_COLUMN = "id";
    private static final String ENGLISH_TITLE_COLUMN = "english_title";
    private static final String ROMAJI_TITLE_COLUMN = "romaji_title";
    private static final String SEASON_COLUMN = "season";
    private static final String PRODUCER_COLUMN = "producer";
    private static final String RELEASE_DATE_COLUMN = "release_date";
    private static final String DESCRIPTION_COLUMN = "description";
    private static final String CHARACTER_NAME_COLUMN = "name";
    private static final String CHARACTER_ANIME_ID_COLUMN = "anime_id";

    private Connection connection = null;
    private Statement statement = null;

    JDBCHelper() {
        try {
            Class.forName(JDBC_DRIVER);
        }
        catch (ClassNotFoundException e) {
            throw new JDBCDriverNotFoundException();
        }
    }

    void connectDatabase(String username, String password) throws DatabaseLoginFailedException {
        try {
            connection = DriverManager.getConnection(DB_PATH, username, password);
        }
        catch (SQLException e) {
            throw new DatabaseLoginFailedException();
        }
    }

    void closeDatabase() {
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

    ArrayList<String> getAvailableGenre() {
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

    ArrayList<AnimeInfo> queryAnime(String query, boolean queryByCharater) {
        ArrayList<AnimeInfo> animeList = new ArrayList<AnimeInfo>();
        try {
            ResultSet resultSet = statement.executeQuery(query);
            while (resultSet.next()) {
                AnimeInfo animeInfo = new AnimeInfo();

                animeInfo.setId(resultSet.getInt(ID_COLUMN));
                animeInfo.setEnglishTitle(resultSet.getString(ENGLISH_TITLE_COLUMN));
                animeInfo.setRomajiTitle(resultSet.getString(ROMAJI_TITLE_COLUMN));
                animeInfo.setProducer(resultSet.getString(PRODUCER_COLUMN));
                animeInfo.setSeason(resultSet.getString(SEASON_COLUMN));
                animeInfo.setReleaseDate(resultSet.getString(RELEASE_DATE_COLUMN));

                if (queryByCharater) {
                    animeInfo.matchedCharacterIs(resultSet.getString(CHARACTER_NAME_COLUMN));
                }

                String description = resultSet.getString(DESCRIPTION_COLUMN);
                if (description != null) {
                    animeInfo.setDescription(description);
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

    ArrayList<CharacterInfo> queryCharacters(String query) {
        ArrayList<CharacterInfo> characters = new ArrayList<CharacterInfo>();
        try {
            ResultSet resultSet = statement.executeQuery(query);
            while (resultSet.next()) {
                CharacterInfo characterInfo = new CharacterInfo();

                characterInfo.setName(resultSet.getString(CHARACTER_NAME_COLUMN));
                characterInfo.setId(resultSet.getInt(ID_COLUMN));
                characterInfo.setAnimeId(resultSet.getInt(CHARACTER_ANIME_ID_COLUMN));

                characters.add(characterInfo);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return characters;
    }
}
