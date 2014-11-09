package animesearch.model;

import animesearch.exception.DatabaseLoginFailedException;

import java.util.ArrayList;

/**
 * Provide API for accessing underlying app database.
 */
public class DatabaseManager {

    private SearchFilter searchFilter;
    private JDBCHelper jdbcHelper;

    public DatabaseManager() {
        jdbcHelper = new JDBCHelper();
    }

    public void connect(String username, String password) throws DatabaseLoginFailedException {
        jdbcHelper.connectDatabase(username, password);
    }

    public void disconnect() {
        jdbcHelper.closeDatabase();
    }

    public ArrayList<AnimeInfo> searchAnimeByName(String approximateName) {
        String query = QueryBuilder.buildAnimeNameSearchQuery(approximateName, searchFilter);
        ArrayList<AnimeInfo> matchedAnimeList = jdbcHelper.queryAnime(query, false);

        searchFilter.filterBySeason(matchedAnimeList); System.out.println(query);
        return matchedAnimeList;
    }

    public ArrayList<AnimeInfo> searchAnimeByCharacter(String approximateName) {
        String query = QueryBuilder.buildAnimeCharacterSearchQuery(approximateName, searchFilter);
        ArrayList<AnimeInfo> matchedAnimeList = jdbcHelper.queryAnime(query, true);

        searchFilter.filterBySeason(matchedAnimeList);
        return matchedAnimeList;
    }

    // Always use this method to obtain the app filter, don't manually instantiate a SearchFilter
    public SearchFilter getSearchFilter() {
        if (searchFilter == null) {
            searchFilter = new SearchFilter();
            searchFilter.addListOfGenre(jdbcHelper.getAvailableGenre());
        }
        return searchFilter;
    }
}
