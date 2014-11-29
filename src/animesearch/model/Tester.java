package animesearch.model;

import animesearch.exception.DatabaseLoginFailedException;
import animesearch.exception.JDBCDriverNotFoundException;

import java.util.ArrayList;

/**
 * Created by kradr_000 on 09/11/2014.
 */
public class Tester
{
    public static void main(String[] args)
    {
        DatabaseManager manager = null;
        try
        {
            manager = DatabaseManager.getInstance();
        } catch (JDBCDriverNotFoundException e)
        {
            e.printStackTrace();
        }

        if (manager != null)
        {
            ArrayList<String> notGen = new ArrayList<String>();
            //notGen.add("action");

            ArrayList<String> andGen = new ArrayList<String>();
            andGen.add("shounen");
            andGen.add("drama");

            try
            {
                manager.connect("postgres", "123456");
            } catch (DatabaseLoginFailedException e)
            {
                e.printStackTrace();
                System.exit(1);
            }

            SearchFilter filter = manager.getSearchFilter();
            filter.mustHave(andGen)
                    .startAt("Fall 1991")
                    .endAt("Summer 2014");

            /*
            ** Testing query speed
            */
            System.out.println("Begin testing........");
            long startTime = System.currentTimeMillis();

            ArrayList<AnimeInfo> animeList = manager.searchAnimeByName("");
            //ArrayList<AnimeInfo> animeList = manager.searchAnimeByCharacter("naruto");

            long runTime = System.currentTimeMillis() - startTime;
            System.out.println("Query anime returned with " + animeList.size() + " result(s) and " +
                    " took " + runTime + " milliseconds to run.");

            for (AnimeInfo anime : animeList)
            {
                System.out.println(anime.getEnglishTitle() + "  " + anime.getReleaseDate() +
                        "  " + anime.getSeason());
                //System.out.println(anime.getMatchedCharacter().getName() + "\n");
            }

//            ArrayList<CharacterInfo> characterList = manager.getAnimeCharacters(1);
//            for (CharacterInfo c : characterList) {
//                System.out.println(c.getName());
//            }

            AnimeInfo anime = manager.getRandomAnime();
            System.out.println("Random anime: \n" + anime.getEnglishTitle() + "  " + anime.getReleaseDate() +
                    "  " + anime.getSeason());

            manager.disconnect();
        }
    }
}
