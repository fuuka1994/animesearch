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
        if (approximateName.equals("")) {
            approximateName = null;
        }

        String query = QueryBuilder.buildSearchAnimeByNameQuery(approximateName, searchFilter);
        ArrayList<AnimeInfo> matchedAnimeList = jdbcHelper.queryAnime(query, false);

        updateAnimeList(matchedAnimeList);
        return matchedAnimeList;
    }

    public ArrayList<AnimeInfo> searchAnimeByCharacter(String approximateName) {
        if (approximateName.equals("")) {
            approximateName = null;
        }

        String query = QueryBuilder.buildSearchAnimeByCharacterQuery(approximateName, searchFilter);
        ArrayList<AnimeInfo> matchedAnimeList = jdbcHelper.queryAnime(query, true);

        updateAnimeList(matchedAnimeList);
        return matchedAnimeList;
    }

    private void updateAnimeList(ArrayList<AnimeInfo> animeList) {
        searchFilter.filterBySeason(animeList);

        for (AnimeInfo a : animeList) {
            String query = QueryBuilder.buildSearchCharactersQuery(a.getEnglishTitle());
            a.setCharacters(jdbcHelper.queryCharacters(query));
        }
    }

    // Always use this method to obtain the app filter, don't manually instantiate a SearchFilter
    public SearchFilter getSearchFilter() {
        if (searchFilter == null) {
            searchFilter = new SearchFilter();
            searchFilter.addListOfGenre(jdbcHelper.getAvailableGenre());
        }
        return searchFilter;
    }

    public void addBookmark(String animeName) {

    }

    public ArrayList<AnimeInfo> getBookmarkedAnimes() {
        ArrayList<AnimeInfo> bookmarkedAnime = new ArrayList<AnimeInfo>();
        return bookmarkedAnime;
    }
}
