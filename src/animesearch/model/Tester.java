package animesearch.model;

import animesearch.exception.DatabaseLoginFailedException;
import animesearch.exception.JDBCDriverNotFoundException;

import java.util.ArrayList;

/**
 * Created by kradr_000 on 09/11/2014.
 */
public class Tester {
    public static void main(String[] args) {
        DatabaseManager manager = null;
        try {
            manager = new DatabaseManager(); //DatabaseManager.getInstance();
        } catch (JDBCDriverNotFoundException e) {
            e.printStackTrace();
        }

        if (manager != null) {
            ArrayList<String> notGen = new ArrayList<String>();
            //notGen.add("drama");
            //notGen.add("school");

            ArrayList<String> andGen = new ArrayList<String>();
            //andGen.add("magic");
            //andGen.add("action");

            try {
                manager.connect("postgres", "123456");
            } catch (DatabaseLoginFailedException e) {
                e.printStackTrace();
                System.exit(1);
            }

            SearchFilter filter = manager.getSearchFilter();
            filter.mustHave(andGen)
                    .exclude(notGen)
                    .startAt("Spring 1995")
                    .endAt("Summer 2014");

            // ArrayList<AnimeInfo> animeList = manager.searchAnimeByName("layer");
            ArrayList<AnimeInfo> animeList = manager.searchAnimeByCharacter("naruto");
            for (AnimeInfo anime : animeList) {
                System.out.println(anime.englishTitle);
                System.out.println(anime.releaseDate + "\n");
            }

            manager.disconnect();
        }
    }
}
