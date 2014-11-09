package animesearch.model;

import java.io.Serializable;
import java.util.ArrayList;

/**
 * Class for easy management of app filter
 */
public class SearchFilter implements Serializable {
    private ArrayList<String> allAvailableGenre;
    // The *GenreSQL is a string represents a list of genre in sql.
    // For example: ('comedy', 'horror')
    private String excludedGenreSQL;
    private String mustHaveGenreSQL;
    private String seasonFrom;
    private String seasonTo;
    private int nMustHaveGenre;
    private int nExcludedGenre;

    // Spring, Summer, Fall, Winter
    private static ArrayList<String> seasonInYear;

    public void addListOfGenre(ArrayList<String> allAvailableGenre) {
        this.allAvailableGenre = allAvailableGenre;
    }

    public SearchFilter exclude(ArrayList<String> excludedGenre) {
        nExcludedGenre = excludedGenre.size();
        excludedGenreSQL = createSqlListFrom(excludedGenre);
        return this;
    }

    public SearchFilter mustHave(ArrayList<String> mustHaveGenre) {
        nMustHaveGenre = mustHaveGenre.size();
        mustHaveGenreSQL = createSqlListFrom(mustHaveGenre);
        return this;
    }

    public String createSqlListFrom(ArrayList<String> genreList) {
        String sqlList = "(";
        for (String genre : genreList) {
            if (genre != "other") {
                sqlList += "'" + genre + "',";
            }
            else {
                // Include all other genre to sql relation
                for (String otherGen : allAvailableGenre) {
                    if (!genreList.contains(otherGen)) {
                        sqlList += "'" + otherGen + "',";
                    }
                }
            }
        }
        // One redundant "," at the end of current string, remove it.
        sqlList = sqlList.substring(0, sqlList.length()-1);
        sqlList += ')';

        return sqlList;
    }

    public SearchFilter startAt(String seasonFrom) {
        this.seasonFrom = seasonFrom;
        return this;
    }

    public SearchFilter endAt(String seasonTo) {
        this.seasonTo = seasonTo;
        return this;
    }

    public void filterBySeason(ArrayList<AnimeInfo> animeList) {
        ArrayList<AnimeInfo> tempList = new ArrayList<AnimeInfo>(animeList);
        for (AnimeInfo anime : tempList) {
            boolean isSeasonBefore = compareSeason(anime.season, this.seasonFrom) < 0;
            boolean isSeasonAfter = compareSeason(anime.season, this.seasonTo) > 0;
            if (isSeasonBefore || isSeasonAfter)
                animeList.remove(anime);
        }
    }

    /*
    ** Return 0 if two season equal, a negative int if seasonA < seasonB,
    *  a positive int if seasonA > seasonB
     */
    private static int compareSeason(String seasonA, String seasonB) {
        // Split season in to "season in year" and "year", in respect order.
        String[] seasonPartsA = seasonA.split(" ");
        String[] seasonPartsB = seasonB.split(" ");

        if (!seasonPartsA[1].equals(seasonPartsB[1]))
            return seasonPartsA[1].compareTo(seasonPartsB[1]);

        // Now two year are equal, we compare by season in year by using
        // a little trick in array list index.
        if (seasonInYear == null) {
            seasonInYear = new ArrayList<String>();
            seasonInYear.add("Spring");
            seasonInYear.add("Summer");
            seasonInYear.add("Fall");
            seasonInYear.add("Winter");
        }
        int seasonIndexA = seasonInYear.indexOf(seasonPartsA[0]);
        int seasonIndexB = seasonInYear.indexOf(seasonPartsB[0]);
        return Integer.compare(seasonIndexA, seasonIndexB);
    }

    public String getExcludedGenreInSql() {
        return excludedGenreSQL;
    }

    public String getMustHaveGenreInSql() {
        return mustHaveGenreSQL;
    }

    public int getNumberOfMustHaveGenre() {
        return nMustHaveGenre;
    }

    public int getNumberOfExcludedGenre() {
        return nExcludedGenre;
    }

    public String getStartSeason() {
        return seasonFrom;
    }

    public String getEndSeason() {
        return seasonTo;
    }
}
