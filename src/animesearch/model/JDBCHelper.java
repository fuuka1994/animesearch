package animesearch.model;

import animesearch.exception.DatabaseLoginFailedException;
import animesearch.exception.JDBCDriverNotFoundException;

import java.sql.*;
import java.util.ArrayList;

/**
 * Provide wrapper for accessing under-laying database
 * All methods are in package scope
 */
public class JDBCHelper
{
    private static final String JDBC_DRIVER = "org.postgresql.Driver";
    private static final String DB_PATH = "jdbc:postgresql://localhost:5432/animedb";
    private static final String ID_COLUMN = "id";
    private static final String ENGLISH_TITLE_COLUMN = "english_title";
    private static final String ROMAJI_TITLE_COLUMN = "romaji_title";
    private static final String SEASON_COLUMN = "season";
    private static final String PRODUCER_COLUMN = "producer";
    private static final String RELEASE_DATE_COLUMN = "release_date";
    private static final String DESCRIPTION_COLUMN = "description";
    private static final String GENRE_COLUMN = "genre";
    private static final String NOTE_COLUMN = "note";
    private static final String CHARACTER_NAME_COLUMN = "name";
    private static final String CHARACTER_ID_COLUMN = "char_id";
    private static final String CHARACTER_ANIME_ID_COLUMN = "anime_id";

    private Connection connection = null;
    private Statement statement = null;
    private String lastQuery;
    private long queryRuntime;

    JDBCHelper()
    {
        try
        {
            Class.forName(JDBC_DRIVER);
        }
        catch (ClassNotFoundException e)
        {
            throw new JDBCDriverNotFoundException();
        }
    }

    void connectDatabase(String username, String password) throws DatabaseLoginFailedException
    {
        try
        {
            connection = DriverManager.getConnection(DB_PATH, username, password);
        }
        catch (SQLException e)
        {
            throw new DatabaseLoginFailedException();
        }
    }

    void closeDatabase()
    {
        try
        {
            if (statement != null)
                statement.close();
            if (connection != null)
                connection.close();
        }
        catch (SQLException e)
        {
            e.printStackTrace();
        }
    }

    ArrayList<String> getAvailableGenre()
    {
        if (statement == null)
            initializeStatement();

        ArrayList<String> availableGenre = new ArrayList<>();
        try
        {
            String query = "SELECT DISTINCT tag FROM \"Genre\"";
            ResultSet resultSet = statement.executeQuery(query);
            while (resultSet.next())
            {
                availableGenre.add(resultSet.getString("tag"));
            }
            resultSet.close();
        }
        catch (SQLException e)
        {
            e.printStackTrace();
        }

        return availableGenre;
    }

    private void initializeStatement()
    {
        try
        {
            statement = connection.createStatement();
        }
        catch (SQLException e)
        {
            e.printStackTrace();
        }
    }

    ArrayList<AnimeInfo> queryAnime(String query, boolean queryByCharater)
    {
        ArrayList<AnimeInfo> animeList = new ArrayList<>();
        try
        {
            lastQuery = query;
            startTimeCounter();
            ResultSet resultSet = statement.executeQuery(query);
            stopTimeCounter();
            while (resultSet.next())
            {
                AnimeInfo animeInfo = createAnimeWithBasicInfo(resultSet);

                if (queryByCharater)
                {
                    CharacterInfo c = new CharacterInfo();
                    c.setName(resultSet.getString(CHARACTER_NAME_COLUMN));
                    c.setId(resultSet.getInt(CHARACTER_ID_COLUMN));
                    c.setAnimeId(resultSet.getInt(ID_COLUMN));
                    animeInfo.matchedCharacterIs(c);
                }

                animeList.add(animeInfo);
            }
            resultSet.close();
        }
        catch (SQLException e)
        {
            e.printStackTrace();
        }
        updateGenreAndSeasonInfo(animeList);
        return animeList;
    }

    private AnimeInfo createAnimeWithBasicInfo(ResultSet rs)
    {
        AnimeInfo animeInfo = new AnimeInfo();
        try
        {
            animeInfo.setId(rs.getInt(ID_COLUMN));
            animeInfo.setEnglishTitle(rs.getString(ENGLISH_TITLE_COLUMN));
            animeInfo.setRomajiTitle(rs.getString(ROMAJI_TITLE_COLUMN));
            animeInfo.setProducer(rs.getString(PRODUCER_COLUMN));
            animeInfo.setReleaseDate(rs.getString(RELEASE_DATE_COLUMN));

            String description = rs.getString(DESCRIPTION_COLUMN);
            // Simple trick to check whether an anime has description or not
            if (description.length() > 5)
            {
                animeInfo.setDescription(description);
            }
        }
        catch (SQLException e)
        {
            e.printStackTrace();
        }

        return animeInfo;
    }
    private void updateGenreAndSeasonInfo(ArrayList<AnimeInfo> list)
    {
        String sql;
        ResultSet rs = null;

        for (AnimeInfo anime : list)
        {
            try
            {
                sql = QueryBuilder.buildGetAnimeSeason(anime.getId());
                rs = statement.executeQuery(sql);
                rs.next();
                anime.setSeason(rs.getString(SEASON_COLUMN));

                sql = QueryBuilder.buildGetAnimeGenre(anime.getId());
                rs = statement.executeQuery(sql);
                rs.next();
                anime.setGenre(rs.getString(GENRE_COLUMN));
            }
            catch (SQLException e)
            {
                e.printStackTrace();
            }
        }

        try
        {
            if (rs != null)
                rs.close();
        }
        catch (SQLException e)
        {
            e.printStackTrace();
        }
    }

    private void startTimeCounter()
    {
        queryRuntime = System.currentTimeMillis();
    }

    private void stopTimeCounter()
    {
        queryRuntime = System.currentTimeMillis() - queryRuntime;
    }

    ArrayList<CharacterInfo> queryCharacters(String query)
    {
        ArrayList<CharacterInfo> characters = new ArrayList<>();
        try
        {
            lastQuery = query;
            startTimeCounter();
            ResultSet resultSet = statement.executeQuery(query);
            stopTimeCounter();
            while (resultSet.next())
            {
                CharacterInfo characterInfo = new CharacterInfo();

                characterInfo.setName(resultSet.getString(CHARACTER_NAME_COLUMN));
                characterInfo.setId(resultSet.getInt(ID_COLUMN));
                characterInfo.setAnimeId(resultSet.getInt(CHARACTER_ANIME_ID_COLUMN));

                characters.add(characterInfo);
            }

        }
        catch (SQLException e)
        {
            e.printStackTrace();
        }
        return characters;
    }

    public int getNumberOfAnime()
    {
        try
        {
            String query = " SELECT COUNT(id) AS number_anime FROM \"Anime_\" \n";
            ResultSet rs = statement.executeQuery(query);
            rs.next();
            return rs.getInt("number_anime");
        }
        catch (SQLException e)
        {
            e.printStackTrace();
        }
        return 0;
    }

    public AnimeInfo getAnimeFromOffset(int offset)
    {
        AnimeInfo animeInfo = new AnimeInfo();
        try
        {
            lastQuery = " SELECT * FROM \"Anime_\" OFFSET " + offset + " LIMIT 1";
            startTimeCounter();
            ResultSet rs = statement.executeQuery(lastQuery);
            stopTimeCounter();
            rs.next();

            animeInfo = createAnimeWithBasicInfo(rs);
        }
        catch (SQLException e)
        {
            e.printStackTrace();
        }

        return animeInfo;
    }

    void addBookmark(int animeId, String note)
    {
        if (note == null)
            note = "";

        String query = "insert into \"Bookmarks\" values (" + animeId
                + ", '" + note + "')";
        try
        {
            statement.executeUpdate(query);
        } catch (SQLException e)
        {
            e.printStackTrace();
        }
    }

    public void updateBookmarkNote(int animeId, String note)
    {
    	try
        {
    		
        	String query = " UPDATE \"Bookmarks\" \n" +
                    " SET note = '" + note + "'\n" +
                    " WHERE anime_id = " + animeId + "\n";
        	statement.executeUpdate(query);
        }
        catch (SQLException e)
        {
            e.printStackTrace();
        }
    }

    ArrayList<AnimeInfo> getBookmarkedAnime()
    {
        ArrayList<AnimeInfo> animeList = new ArrayList<>();
        lastQuery = QueryBuilder.buildGetBookmarksQuery();
        try
        {
            startTimeCounter();
            ResultSet resultSet = statement.executeQuery(lastQuery);
            stopTimeCounter();
            while (resultSet.next())
            {
                AnimeInfo animeInfo = createAnimeWithBasicInfo(resultSet);
                animeInfo.setBookmarkNote(resultSet.getString(NOTE_COLUMN));

                animeList.add(animeInfo);
            }
            resultSet.close();
        } catch (SQLException e)
        {
            e.printStackTrace();
        }

        updateGenreAndSeasonInfo(animeList);
        return animeList;
    }

    void deleteBookmark(int animeId)
    {
        String sql = " DELETE FROM \"Bookmarks\" WHERE anime_id=" + animeId;
        try
        {
            statement.executeUpdate(sql);
        }
        catch (SQLException e)
        {
            e.printStackTrace();
        }
    }

    String getLastQuery()
    {
        return lastQuery;
    }

    long getLastQueryRuntime()
    {
        return queryRuntime;
    }
}
