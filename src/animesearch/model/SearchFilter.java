package animesearch.model;

import java.io.Serializable;
import java.util.ArrayList;

/**
 * Class for easy management of app filter
 */
public class SearchFilter implements Serializable {
    private ArrayList<String> allAvailableGenre;
    private String excludedGenreSQL;
    private String mustHaveGenreSQL;
    private String seasonFrom;
    private String seasonTo;

    public void addListOfGenre(ArrayList<String> allAvailableGenre) {
        this.allAvailableGenre = allAvailableGenre;
    }

    public SearchFilter exclude(ArrayList<String> excludedGenre) {
        excludedGenreSQL = "(";
        for (String genre : excludedGenre) {
            if (genre != "other") {
                excludedGenreSQL += genre + ",";
            } else {
                // Include all other genre to sql relation
                for (String otherGen : allAvailableGenre) {
                    if (!excludedGenre.contains(otherGen)) {
                        excludedGenreSQL += otherGen + ",";
                    }
                }
            }
        }
        excludedGenreSQL += ")";
        return this;
    }

    public SearchFilter mustHave(ArrayList<String> mustHaveGenre) {
        mustHaveGenreSQL = "(";
        for (String genre : mustHaveGenre) {
            if (genre != "other") {
                mustHaveGenreSQL += genre + ",";
            }
            else {
                // Include all other genre to sql relation
                for (String otherGen : allAvailableGenre) {
                    if (!mustHaveGenre.contains(otherGen)) {
                        mustHaveGenreSQL += otherGen + ",";
                    }
                }
            }
        }
        mustHaveGenreSQL += ")";
        return this;
    }

    public SearchFilter startAt(String seasonFrom) {
        this.seasonFrom = seasonFrom;
        return this;
    }

    public SearchFilter endAt(String seasonTo) {
        this.seasonTo = seasonTo;
        return this;
    }

    public String getExcludedGenreInSql() {
        return excludedGenreSQL;
    }

    public String getMustHaveGenreInSql() {
        return mustHaveGenreSQL;
    }

    public String getStartSeason() {
        return seasonFrom;
    }

    public String getEndSeason() {
        return seasonTo;
    }
}
