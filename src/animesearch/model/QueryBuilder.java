package animesearch.model;

/**
 * Temporary builder, later refactoring.
 */
public class QueryBuilder {

    private QueryBuilder() {}

    public static String buildSearchAnimeByNameQuery(String approximateName, SearchFilter searchFilter) {
        String query = " SELECT A.* " +
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
            query += " EXCEPT SELECT A.* " +
                    " FROM \"Genre\" AS G, \"Anime\" AS A " +
                    " WHERE G.anime_id = A.id AND tag IN " + searchFilter.getExcludedGenreInSql();
        }

        return query;
    }

    public static String buildSearchAnimeByCharacterQuery(String approximateName, SearchFilter searchFilter) {
        String nameFilterQuery = buildSearchAnimeByNameQuery(null, searchFilter);

        String query = " SELECT A.* , C.name " +
                        " FROM \"Character\" AS C, (" + nameFilterQuery + ") AS A " +
                        " WHERE C.anime_id = A.id  AND UPPER(name) " +
                        " LIKE UPPER('%" + approximateName + "%')";
        return query;
    }

    public static String buildSearchCharactersQuery(String animeEnglishTitle) {
        String query = " SELECT name, image_path \n" +
                        " FROM \"Character\" AS C, \"Anime\" AS A \n" +
                        " WHERE C.anime_id = A.id AND english_title = '" + animeEnglishTitle + "'";
        return query;
    }
}
