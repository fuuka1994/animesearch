package animesearch.model;

/**
 * Temporary builder, later refactoring.
 */
public class QueryBuilder {

    public static String buildAnimeNameSearchQuery(String approximateName, SearchFilter searchFilter) {
        String query = " SELECT english_title, romaji_title, season, producer, release_date, description " +
                " FROM \"Genre\" AS G, \"Anime\" AS A " +
                " WHERE G.anime_id = A.id AND "+
                " (UPPER(english_title) LIKE UPPER('%" + approximateName + "%') OR " +
                " UPPER(romaji_title) LIKE UPPER('%" + approximateName + "%')) ";

        if (searchFilter.getNumberOfMustHaveGenre() != 0) {
            query += " AND tag IN " + searchFilter.getMustHaveGenreInSql();
        }
        query += " GROUP BY A.id HAVING COUNT(tag) >= " + searchFilter.getNumberOfMustHaveGenre();

        if (searchFilter.getNumberOfExcludedGenre() != 0) {
            query += " EXCEPT SELECT english_title, romaji_title, season, producer, release_date, description " +
                    " FROM \"Genre\" AS G, \"Anime\" AS A " +
                    " WHERE G.anime_id = A.id AND tag IN " + searchFilter.getExcludedGenreInSql();
        }

        return query;
    }
}
