package animesearch.model;

import animesearch.exception.DatabaseLoginFailedException;

import java.util.ArrayList;

/**
 * Provides API for accessing underlying app database.
 */
public class DatabaseManager
{

    private SearchFilter searchFilter;
    private JDBCHelper jdbcHelper;

    public DatabaseManager()
    {
        jdbcHelper = new JDBCHelper();
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
        ArrayList<AnimeInfo> matchedAnimeList = jdbcHelper.queryAnime(query, false);

        return matchedAnimeList;
    }

    public ArrayList<AnimeInfo> searchAnimeByCharacter(String approximateName)
    {
        String query = QueryBuilder.buildSearchAnimeByCharacterQuery(approximateName, searchFilter);
        ArrayList<AnimeInfo> matchedAnimeList = jdbcHelper.queryAnime(query, true);

        //updateAnimeList(matchedAnimeList);
        return matchedAnimeList;
    }

    public ArrayList<CharacterInfo> getAnimeCharacters(int animeId)
    {
        String query = QueryBuilder.buildSearchCharactersQuery(animeId);
        return jdbcHelper.queryCharacters(query);
    }

    private void updateAnimeList(ArrayList<AnimeInfo> animeList)
    {
        searchFilter.filterBySeason(animeList);

        for (AnimeInfo a : animeList)
        {
            //String animeName = escapeSpecialCharacters(a.getEnglishTitle());
            String query = QueryBuilder.buildSearchCharactersQuery(a.getId());
            a.setCharacters(jdbcHelper.queryCharacters(query));
        }
    }

    // Escape some characters in sql like '
    private String escapeSpecialCharacters(String origin)
    {
        return origin.replace("'", "''");
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

    public ArrayList<AnimeInfo> getBookmarkedAnime()
    {
        return jdbcHelper.getBookmarkedAnime();
    }

    public void deleteBookmark(int animeId) {
        jdbcHelper.deleteBookmark(animeId);
    }
}
