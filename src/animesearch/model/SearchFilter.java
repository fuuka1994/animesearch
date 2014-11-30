package animesearch.model;

import java.io.Serializable;
import java.util.ArrayList;

/**
 * Class for easy management of app filter
 */

public class SearchFilter implements Serializable
{
    private ArrayList<String> allAvailableGenre;
    // The *GenreSQL is a string represents a list of genre in sql.
    // For example: ('comedy', 'horror')
    private String excludedGenreSQL;
    private String mustHaveGenreSQL;
    private String startSeason;
    private String endSeason;
    private int nMustHaveGenre;
    private int nExcludedGenre;

    // Spring, Summer, Fall, Winter
    private static ArrayList<String> seasonInYear;

    public void addListOfGenre(ArrayList<String> allAvailableGenre)
    {
        this.allAvailableGenre = allAvailableGenre;
    }

    public SearchFilter exclude(ArrayList<String> excludedGenre)
    {
        nExcludedGenre = excludedGenre.size();
        excludedGenreSQL = createSqlListFrom(excludedGenre);
        return this;
    }

    public SearchFilter mustHave(ArrayList<String> mustHaveGenre)
    {
        nMustHaveGenre = mustHaveGenre.size();
        mustHaveGenreSQL = createSqlListFrom(mustHaveGenre);
        return this;
    }

    private String createSqlListFrom(ArrayList<String> genreList)
    {
        String sqlList = "(";
        for (String genre : genreList)
        {
            if (genre != "other")
            {
                sqlList += "'" + genre + "',";
            } else
            {
                // Include all other genre to sql relation
                for (String otherGen : allAvailableGenre)
                {
                    if (!genreList.contains(otherGen))
                    {
                        sqlList += "'" + otherGen + "',";
                    }
                }
            }
        }
        // One redundant "," at the end of current string, remove it.
        sqlList = sqlList.substring(0, sqlList.length() - 1);
        sqlList += ')';

        return sqlList;
    }

    public SearchFilter startAt(String seasonFrom)
    {
        this.startSeason = seasonFrom;
        return this;
    }

    public SearchFilter endAt(String seasonTo)
    {
        this.endSeason = seasonTo;
        return this;
    }
    
    public SearchFilter clearTimeFilter() {
		this.startSeason = null;
		this.endSeason = null;
		return this;
	}

    boolean hasStartSeason()
    {
        return startSeason != null;
    }

    boolean hasEndSeason()
    {
        return endSeason != null;
    }

    public String getExcludedGenreInSql()
    {
        return excludedGenreSQL;
    }

    public String getMustHaveGenreInSql()
    {
        return mustHaveGenreSQL;
    }

    public int getNumberOfMustHaveGenre()
    {
        return nMustHaveGenre;
    }

    public int getNumberOfExcludedGenre()
    {
        return nExcludedGenre;
    }

    public String getStartSeason()
    {
        return startSeason;
    }

    public String getEndSeason()
    {
        return endSeason;
    }
}
