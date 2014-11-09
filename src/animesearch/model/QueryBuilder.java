package animesearch.model;

/**
 * Temporary builder, later refactoring.
 */
public class QueryBuilder {

    private QueryBuilder() {}

    public static String buildAnimeNameSearchQuery(String approximateName, SearchFilter searchFilter) {
        String query = " SELECT A.id, english_title, romaji_title, season, producer, release_date, description " +
                " FROM \"Genre\" AS G, \"Anime\" AS A " +
                " WHERE G.anime_id = A.id ";

        if (approximateName != null) {
            query += " AND (UPPER(english_title) LIKE UPPER('%" + approximateName + "%') OR " +
                    " UPPER(romaji_title) LIKE UPPER('%" + approximateName + "%')) ";

        }

        if (searchFilter.getNumberOfMustHaveGenre() != 0) {
            query += " AND tag IN " + searchFilter.getMustHaveGenreInSql();
        }
        query += " GROUP BY A.id HAVING COUNT(tag) >= " + searchFilter.getNumberOfMustHaveGenre();

        if (searchFilter.getNumberOfExcludedGenre() != 0) {
            query += " EXCEPT SELECT A.id, english_title, romaji_title, season, producer, release_date, description " +
                    " FROM \"Genre\" AS G, \"Anime\" AS A " +
                    " WHERE G.anime_id = A.id AND tag IN " + searchFilter.getExcludedGenreInSql();
        }

        return query;
    }

    public static String buildAnimeCharacterSearchQuery(String approximateName, SearchFilter searchFilter) {
        String nameFilterQuery = buildAnimeNameSearchQuery(null, searchFilter);

        String query = " SELECT english_title, romaji_title, season, producer, release_date, description, " +
                        " name, image_path " +
                        " FROM \"Character\" AS C, (" + nameFilterQuery + ") AS A " +
                        " WHERE C.anime_id = A.id  AND UPPER(name) " +
                        " LIKE UPPER('%" + approximateName + "%')";
        return query;
    }
}
