package animesearch.model;

/**
 * Temporary builder, later refactoring.
 */
public class QueryBuilder
{
    private static String[] seasonInYear = {"Spring", "Summer", "Fall", "Winter"};

    private QueryBuilder() {}

    static String buildSearchAnimeByNameQuery(String approximateName, SearchFilter searchFilter)
    {
        String query = " SELECT a.* \n" +
                " FROM \"Anime_\" AS a, \"Season\" AS s, \"AnimeSeason\" AS as_, \"Genre\" AS g \n" +
                " WHERE a.id = as_.anime_id AND  s.id = as_.season_id AND g.anime_id = a.id \n";

        if (approximateName != null)
        {
            query += "   AND (UPPER(english_title) LIKE UPPER('%" + approximateName + "%') OR " +
                    " UPPER(romaji_title) LIKE UPPER('%" + approximateName + "%')) \n";

        }

        if (searchFilter.hasStartSeason())
        {
            String[] season = (searchFilter.getStartSeason()).split(" ");
            query += " AND s.year > " + Integer.parseInt(season[1]);
        }

        if (searchFilter.hasEndSeason())
        {
            String[] season = (searchFilter.getEndSeason()).split(" ");
            query += " AND s.year < " + Integer.parseInt(season[1]);
        }

        if (searchFilter.getNumberOfMustHaveGenre() != 0)
        {
            query += " AND tag IN " + searchFilter.getMustHaveGenreInSql();
        }
        query += " GROUP BY a.id HAVING COUNT(tag) >= "
                + searchFilter.getNumberOfMustHaveGenre() + "\n";

        if (searchFilter.getNumberOfExcludedGenre() != 0)
        {
            query += " EXCEPT \n SELECT a.* \n" +
                    " FROM \"Anime_\" AS a, \"Season\" AS s, \"AnimeSeason\" AS as_, \"Genre\" AS g \n" +
                    " WHERE a.id = as_.anime_id AND  s.id = as_.season_id AND g.anime_id = a.id AND tag IN "
                    + searchFilter.getExcludedGenreInSql() + "\n";
        }

        if (searchFilter.hasStartSeason())
        {
            String[] season = (searchFilter.getStartSeason()).split(" ");
            query += " EXCEPT \n SELECT a.* \n" +
                    " FROM \"Anime_\" AS a, \"Season\" AS s, \"AnimeSeason\" AS as_, \"Genre\" AS g \n" +
                    " WHERE a.id = as_.anime_id AND  s.id = as_.season_id AND g.anime_id = a.id " +
                    " AND s.year = " + Integer.parseInt(season[1]) +
                    " AND s.season_in_year in " + retrieveSeasonInStartYear(season[0]) + "\n";

        }

        if (searchFilter.hasEndSeason())
        {
            String[] season = (searchFilter.getEndSeason()).split(" ");
            query += " EXCEPT \n SELECT a.* \n" +
                    " FROM \"Anime_\" AS a, \"Season\" AS s, \"AnimeSeason\" AS as_, \"Genre\" AS g \n" +
                    " WHERE a.id = as_.anime_id AND  s.id = as_.season_id AND g.anime_id = a.id " +
                    " AND s.year = " + Integer.parseInt(season[1]) +
                    " AND s.season_in_year in " + retrieveSeasonInEndYear(season[0]);

        }

        return query;
    }

    private static String retrieveSeasonInStartYear(String startSeason)
    {
        boolean seasonFound = false;
        String seasonInStartYear = "(";

        for (String season : seasonInYear)
        {
            if (season.equals(startSeason))
            {
                seasonFound = true;
            }
            if (seasonFound)
            {
                seasonInStartYear += "'" + season + "',";
            }
        }
        seasonInStartYear = seasonInStartYear.substring(0, seasonInStartYear.length() - 1);
        seasonInStartYear += ")";

        return seasonInStartYear;
    }

    private static String retrieveSeasonInEndYear(String endSeason)
    {
        String seasonInEndYear = "(";

        for (String season : seasonInYear)
        {
            seasonInEndYear += "'" + season + "',";
            if (season.equals(endSeason))
            {
                break;
            }
        }
        seasonInEndYear = seasonInEndYear.substring(0, seasonInEndYear.length() - 1);
        seasonInEndYear += ")";

        return seasonInEndYear;
    }

    static String buildSearchAnimeByCharacterQuery(String approximateName, SearchFilter searchFilter)
    {
        String nameFilterQuery = buildSearchAnimeByNameQuery(null, searchFilter);

        return  " SELECT a.*, c.id as char_id, c.name \n" +
                " FROM \"Characters\" AS C, (" + nameFilterQuery + ") AS A \n" +
                " WHERE C.anime_id = A.id  AND UPPER(name) " +
                " LIKE UPPER('%" + approximateName + "%') \n";
    }

    static String buildSearchCharactersQuery(int animeId)
    {
        return  " SELECT c.* \n" +
                " FROM \"Characters\" AS C \n" +
                " WHERE c.anime_id = " + animeId + "\n";
    }

    static String buildGetBookmarksQuery()
    {
        return  " SELECT a.*, note \n" +
                " FROM \"Anime_\" AS a, \"Bookmarks\" AS b \n" +
                " WHERE a.id = b.anime_id \n";
    }

    public static String buildGetAnimeGenre(int animeId)
    {
        return  " SELECT STRING_AGG(tag, ', ') AS genre \n" +
                " FROM \"Genre\" \n" +
                " WHERE anime_id = " + animeId + "\n";
    }

    public static String buildGetAnimeSeason(int animeId)
    {
        return  " SELECT STRING_AGG(s.season_in_year || ' ' || s.year, ', ') AS season \n" +
                " FROM \"Season\" AS s, \"AnimeSeason\" AS as_ \n" +
                " WHERE anime_id = " + animeId + " AND s.id = as_.season_id \n";
    }
}
