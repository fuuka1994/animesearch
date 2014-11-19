package animesearch.model;

/**
 * Temporary builder, later refactoring.
 */
public class QueryBuilder {

    private static String[] seasonInYear = {"Spring", "Summer", "Fall", "Winter"};

    private QueryBuilder() {}

    static String buildSearchAnimeByNameQuery(String approximateName, SearchFilter searchFilter) {
        String query = " select a.*, as_.release_date, (s.season_in_year || ' ' || s.year) as season \n" +
                " from \"Anime_\" as a, \"Season\" as s, \"AnimeSeason\" as as_, \"Genre\" as g \n" +
                " where a.id = as_.anime_id and  s.id = as_.season_id and g.anime_id = a.id \n";

        if (approximateName != null) {
            query += "   AND (UPPER(english_title) LIKE UPPER('%" + approximateName + "%') OR " +
                    " UPPER(romaji_title) LIKE UPPER('%" + approximateName + "%')) \n";

        }

        if (searchFilter.hasStartSeason()) {
            String[] season = (searchFilter.getStartSeason()).split(" ");
            query += " and s.year > " + Integer.parseInt(season[1]);
        }

        if (searchFilter.hasEndSeason()) {
            String[] season = (searchFilter.getEndSeason()).split(" ");
            query += " and s.year < " + Integer.parseInt(season[1]);
        }

        if (searchFilter.getNumberOfMustHaveGenre() != 0) {
            query += " AND tag IN " + searchFilter.getMustHaveGenreInSql();
        }
        query += " GROUP BY a.id, as_.release_date, season HAVING COUNT(tag) >= "
                + searchFilter.getNumberOfMustHaveGenre() + "\n";

        if (searchFilter.getNumberOfExcludedGenre() != 0) {
            query += " EXCEPT \n SELECT A.*, release_date, (s.season_in_year || ' ' || s.year) as season \n" +
                    " from \"Anime_\" as a, \"Season\" as s, \"AnimeSeason\" as as_, \"Genre\" as g \n" +
                    " where a.id = as_.anime_id and  s.id = as_.season_id and g.anime_id = a.id AND tag IN "
                    + searchFilter.getExcludedGenreInSql();
        }

        if (searchFilter.hasStartSeason()) {
            String[] season = (searchFilter.getStartSeason()).split(" ");
            query += " EXCEPT \n SELECT A.*, release_date, (s.season_in_year || ' ' || s.year) as season \n" +
                    " from \"Anime_\" as a, \"Season\" as s, \"AnimeSeason\" as as_, \"Genre\" as g \n" +
                    " where a.id = as_.anime_id and  s.id = as_.season_id and g.anime_id = a.id " +
                    " and s.year = " + Integer.parseInt(season[1]) +
                    " and s.season_in_year in " + retrieveSeasonInStartYear(season[0]);

        }

        if (searchFilter.hasEndSeason()) {
            String[] season = (searchFilter.getEndSeason()).split(" ");
            query += " EXCEPT \n SELECT A.*, release_date, (s.season_in_year || ' ' || s.year) as season \n" +
                    " from \"Anime_\" as a, \"Season\" as s, \"AnimeSeason\" as as_, \"Genre\" as g \n" +
                    " where a.id = as_.anime_id and  s.id = as_.season_id and g.anime_id = a.id " +
                    " and s.year = " + Integer.parseInt(season[1]) +
                    " and s.season_in_year in " + retrieveSeasonInEndYear(season[0]);

        }

        //System.out.println(query);
        return query;
    }

    private static String retrieveSeasonInStartYear(String startSeason) {
        boolean seasonFound = false;
        String seasonInStartYear = "(";

        for (String season : seasonInYear) {
            if (season.equals(startSeason)) {
                seasonFound = true;
            }
            if (seasonFound == true) {
                seasonInStartYear += "'" + season + "',";
            }
        }
        seasonInStartYear = seasonInStartYear.substring(0, seasonInStartYear.length()-1);
        seasonInStartYear += ")";

        return seasonInStartYear;
    }

    private static String retrieveSeasonInEndYear(String endSeason) {
        String seasonInEndYear = "(";

        for (String season : seasonInYear) {
            seasonInEndYear += "'" + season + "',";
            if (season.equals(endSeason)) {
                break;
            }
        }
        seasonInEndYear = seasonInEndYear.substring(0, seasonInEndYear.length()-1);
        seasonInEndYear += ")";

        return seasonInEndYear;
    }

    static String buildSearchAnimeByCharacterQuery(String approximateName, SearchFilter searchFilter) {
        String nameFilterQuery = buildSearchAnimeByNameQuery(null, searchFilter);

        String query = " SELECT A.* , C.name \n" +
                        " FROM \"Characters\" AS C, (" + nameFilterQuery + ") AS A \n" +
                        " WHERE C.anime_id = A.id  AND UPPER(name) " +
                        " LIKE UPPER('%" + approximateName + "%')";
        return query;
    }

    static String buildSearchCharactersQuery(int animeId) {
        String query = " SELECT c.* \n" +
                        " FROM \"Characters\" AS C \n" +
                        " WHERE c.anime_id = " + animeId;

        return query;
    }
}
