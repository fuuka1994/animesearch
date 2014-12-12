package animesearch.model;

import animesearch.exception.DatabaseLoginFailedException;

import java.util.ArrayList;

/**
 * Provides API for accessing underlying app database.
 * A singleton class
 */

public class DatabaseManager
{
    private static DatabaseManager singletonDatabaseManager;

    private SearchFilter searchFilter;
    private JDBCHelper jdbcHelper;

    private DatabaseManager()
    {
        jdbcHelper = new JDBCHelper();
    }

    public static DatabaseManager getInstance()
    {
        if (singletonDatabaseManager == null)
            singletonDatabaseManager = new DatabaseManager();

        return singletonDatabaseManager;
    }

    public void connect(String username, String password) throws DatabaseLoginFailedException
    {
        jdbcHelper.connectDatabase(username, password);
    }

    public void disconnect()
    {
        jdbcHelper.closeDatabase();
    }

    public ArrayList<AnimeInfo> searchAnimeByName(String approximateName)
    {
        String query = QueryBuilder.buildSearchAnimeByNameQuery(approximateName, searchFilter);
        return jdbcHelper.queryAnime(query, false);
    }

    public ArrayList<AnimeInfo> searchAnimeByCharacter(String approximateName)
    {
        String query = QueryBuilder.buildSearchAnimeByCharacterQuery(approximateName, searchFilter);
        return jdbcHelper.queryAnime(query, true);
    }

    public ArrayList<AnimeInfo> searchAnimeByProducer(String producer)
    {
        String query = QueryBuilder.buildSearchAnimeByProducer(producer);
        return jdbcHelper.queryAnime(query, false);
    }

    public ArrayList<CharacterInfo> getAnimeCharacters(int animeId)
    {
        String query = QueryBuilder.buildSearchCharactersQuery(animeId);
        return jdbcHelper.queryCharacters(query);
    }

    public AnimeInfo getRandomAnime()
    {
        int numberOfAnime = jdbcHelper.getNumberOfAnime();
        int randomOffset = (int) (Math.random() * numberOfAnime);

        return jdbcHelper.getAnimeFromOffset(randomOffset);
    }

    // Always use this method to obtain the app filter, don't manually instantiate a SearchFilter
    public SearchFilter getSearchFilter()
    {
        if (searchFilter == null)
        {
            searchFilter = new SearchFilter();
            searchFilter.addListOfGenre(jdbcHelper.getAvailableGenre());
        }
        return searchFilter;
    }

    public void addBookmark(int animeId, String note)
    {
        jdbcHelper.addBookmark(animeId, note);
    }

    public void updateBookmarkNote(int animeId, String note)
    {
        jdbcHelper.updateBookmarkNote(animeId, note);
    }

    public ArrayList<AnimeInfo> getBookmarkedAnime()
    {
        return jdbcHelper.getBookmarkedAnime();
    }

    public boolean checkBookmarkState(AnimeInfo animeInfo) {
    	for (AnimeInfo item : getBookmarkedAnime()) {
			if (item.getId() == animeInfo.getId()) {
				return true;
			}
		}
    	
    	return false;
    }
    
    public void deleteBookmark(int animeId) {
        jdbcHelper.deleteBookmark(animeId);
    }

    public String getLastQuery()
    {
        return jdbcHelper.getLastQuery();
    }

    public long getLastQueryRuntime()
    {
        return jdbcHelper.getLastQueryRuntime();
    }
}
