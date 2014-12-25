package animesearch.model;

public class QueryBuilder {
    private static SQLClause select = new SQLClause("SELECT", ",");
    private static SQLClause from = new SQLClause("FROM", ",");
    private static SQLClause where = new SQLClause("WHERE", "AND");
    private static SQLClause groupBy = new SQLClause("GROUP BY", ",");
    private static SQLClause having = new SQLClause("HAVING", "AND");
    private static String[] seasonInYear = {"Spring", "Summer", "Fall", "Winter"};

    private QueryBuilder() {
    }

    public static String buildSearchAnimeByName(String approximateName, SearchFilter filter) {
        resetClause();

        select.append("A.*");
        from.append("\"Anime_\" A");

        if (filter.hasSeason()) {
            from.append("\"Season\" S")
                    .append("\"AnimeSeason\" AS_");
            where.append("A.id = AS_.anime_id")
                    .append("AS_.season_id = S.id");
        }

        if (filter.hasGenre()) {
            from.append("\"Genre\" G");
            where.append("A.id = G.anime_id");
        }

        if (approximateName != null) {
            where.append("(UPPER(english_title) LIKE UPPER('%" + approximateName + "%') OR " +
                    " UPPER(romaji_title) LIKE UPPER('%" + approximateName + "%'))");
        }

        if (filter.hasMustHaveGenre()) {
            String mustHaveGenre = filter.getMustHaveGenreInSql();
            where.append("G.tag IN " + mustHaveGenre);
            groupBy.append("A.id");
            having.append("COUNT(G.tag) >= " + filter.getNumberOfMustHaveGenre());
        }

        if (filter.hasStartSeason()) {
            String startSeason = filter.getStartSeason();
            String startYear = extractYear(startSeason);
            where.append("S.year >= " + startYear);
        }

        if (filter.hasEndSeason()) {
            String endSeason = filter.getEndSeason();
            String endYear = extractYear(endSeason);
            where.append("S.year <= " + endYear);
        }

        String query = buildQuery();
        if (filter.hasExcludedGenre()) {
            String excludedGenre = filter.getExcludedGenreInSql();
            String subQuery = selectExcludedGenreAnime(excludedGenre);
            query += "EXCEPT\n" + subQuery;
        }


        if (filter.hasStartSeason()) {
            String startSeason = filter.getStartSeason();
            String year = extractYear(startSeason);
            String aSeason = extractSeasonInYear(startSeason);
            String allSeasonFromThis = retrieveSeasonInStartYear(aSeason);
            String subQuery = selectAnimeInSeason(year, allSeasonFromThis);
            query += "EXCEPT\n" + subQuery;
        }

        if (filter.hasEndSeason()) {
            String endSeason = filter.getEndSeason();
            String year = extractYear(endSeason);
            String aSeason = extractSeasonInYear(endSeason);
            String allSeasonToThis = retrieveSeasonInEndYear(aSeason);
            String subQuery = selectAnimeInSeason(year, allSeasonToThis);
            query += "EXCEPT\n" + subQuery;
        }

        return query;
    }

    private static void resetClause() {
        select.reset();
        from.reset();
        where.reset();
        groupBy.reset();
        having.reset();
    }

    private static String extractYear(String season) {
        StringBuilder builder = new StringBuilder();
        for (int i = 0; i < season.length(); i++) {
            char c = season.charAt(i);
            if (Character.isDigit(c)) {
                builder.append(c);
            }
        }
        return builder.toString();
    }

    private static String extractSeasonInYear(String season) {
        StringBuilder builder = new StringBuilder();
        for (int i = 0; i < season.length(); i++) {
            char c = season.charAt(i);
            if (Character.isAlphabetic(c)) {
                builder.append(c);
            }
        }
        return builder.toString();
    }

    private static String buildQuery() {
        return select.getClause() +
                from.getClause() +
                where.getClause() +
                groupBy.getClause() +
                having.getClause();
    }

    private static String selectExcludedGenreAnime(String excludedGenre) {
        SQLClause subSelect = new SQLClause("SELECT", ",");
        SQLClause subFrom = new SQLClause("FROM", ",");
        SQLClause subWhere = new SQLClause("WHERE", "AND");

        subSelect.append("A.*");
        subFrom.append("\"Anime_\" A")
                .append("\"Genre\" G");
        subWhere.append("A.id = G.anime_id")
                .append("G.tag IN " + excludedGenre);

        return subSelect.getClause() +
                subFrom.getClause() +
                subWhere.getClause();
    }

    private static String selectAnimeInSeason(String year, String seasonInYear) {
        SQLClause subSelect = new SQLClause("SELECT", ",");
        SQLClause subFrom = new SQLClause("FROM", ",");
        SQLClause subWhere = new SQLClause("WHERE", "AND");

        subSelect.append("A.*");
        subFrom.append("\"Anime_\" A")
                .append("\"AnimeSeason\" AS_")
                .append("\"Season\" S");
        subWhere.append("A.id = AS_.anime_id")
                .append("AS_.season_id = S.id")
                .append("S.year = " + year)
                .append("S.season_in_year IN " + seasonInYear);

        return subSelect.getClause() +
                subFrom.getClause() +
                subWhere.getClause();
    }

    private static String retrieveSeasonInStartYear(String startSeason) {
        if (startSeason.equals("Spring"))
            return "('')";    //Can't be matched

        String seasonInStartYear = "(";

        for (String season : seasonInYear) {
            if (season.equals(startSeason)) {
                break;
            } else {
                seasonInStartYear += "'" + season + "',";
            }
        }
        seasonInStartYear = seasonInStartYear.substring(0, seasonInStartYear.length() - 1);
        seasonInStartYear += ")";

        return seasonInStartYear;
    }

    private static String retrieveSeasonInEndYear(String endSeason) {
        if (endSeason.equals("Winter"))
            return "('')";    //Can't be matched

        String seasonInEndYear = "(";

        for (int i = seasonInYear.length-1; i >= 0; i--) {
            if (seasonInYear[i].equals(endSeason)) {
                break;
            } else {
                seasonInEndYear += "'" + seasonInYear[i] + "',";
            }
        }
        seasonInEndYear = seasonInEndYear.substring(0, seasonInEndYear.length() - 1);
        seasonInEndYear += ")";

        return seasonInEndYear;
    }

    public static String buildSearchAnimeByCharacter(String approximateName, SearchFilter filter) {
        resetClause();
        String nameFilterQuery = buildSearchAnimeByName(null, filter);
        nameFilterQuery = nameFilterQuery.replaceAll("\\n", "\n        ");

        resetClause();
        select.append("A.*")
                .append("C.id char_id")
                .append("C.name");
        from.append("\"Characters\" C")
                .append("(" + nameFilterQuery + ") A");
        where.append("A.id = C.anime_id")
                .append("UPPER(C.name) LIKE UPPER('%" + approximateName + "%') LIMIT 100");

        return buildQuery();
    }

    static String buildSearchCharactersQuery(int animeId) {
        resetClause();
        select.append("C.*");
        from.append("\"Characters\" C");
        where.append("C.anime_id = " + animeId);

        return buildQuery();
    }

    static String buildGetBookmarksQuery() {
        resetClause();
        select.append("A.*").append("B.note");
        from.append("\"Anime_\" A")
                .append("\"Bookmarks\" B");
        where.append("A.id = B.anime_id");

        return buildQuery();
    }

    public static String buildGetAnimeGenre(int animeId) {
        resetClause();
        select.append("STRING_AGG(INITCAP(tag), ', ') genre");
        from.append("\"Genre\"");
        where.append("anime_id = " + animeId);

        return buildQuery();
    }

    public static String buildGetAnimeSeason(int animeId) {
        resetClause();
        select.append("STRING_AGG(S.season_in_year || ' ' || S.year, ', ') season");
        from.append("\"Season\" S").append("\"AnimeSeason\" AS_");
        where.append("AS_.anime_id = " + animeId)
                .append("AS_.season_id = S.id");

        return buildQuery();
    }

    public static String buildSearchAnimeByProducer(String producer) {
        resetClause();
        select.append("*");
        from.append("\"Anime_\"");
        where.append("producer = '" + producer + "'");

        return buildQuery();
    }
}
