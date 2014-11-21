package animesearch.model;

import java.util.ArrayList;

/**
 * Used to transfer data between database and application
 */
public class AnimeInfo
{

    private int id;
    private String englishTitle;
    private String romajiTitle;
    private String season;
    private String producer;
    private String releaseDate;
    private String description;
    private String bookmarkNote;

    private String matchedCharacter;
    private ArrayList<CharacterInfo> characters;

    public AnimeInfo()
    {
        characters = new ArrayList<CharacterInfo>();
        description = "No description";
    }

    void matchedCharacterIs(String characterName)
    {
        this.matchedCharacter = characterName;
    }

    // Character to show as app's JTable
    public CharacterInfo getMatchedCharacter()
    {
        for (CharacterInfo c : characters)
        {
            if (c.getName().equals(matchedCharacter))
                return c;
        }
        return null;
    }

    public void setCharacters(ArrayList<CharacterInfo> characters)
    {
        this.characters = characters;
    }

    public ArrayList<CharacterInfo> getCharacters()
    {
        return characters;
    }

    public int getId()
    {
        return id;
    }

    public void setId(int id)
    {
        this.id = id;
    }

    public String getEnglishTitle()
    {
        return englishTitle;
    }

    public void setEnglishTitle(String englishTitle)
    {
        this.englishTitle = englishTitle;
    }

    public String getRomajiTitle()
    {
        return romajiTitle;
    }

    public void setRomajiTitle(String romajiTitle)
    {
        this.romajiTitle = romajiTitle;
    }

    public String getSeason()
    {
        return season;
    }

    public void setSeason(String season)
    {
        this.season = season;
    }

    public String getProducer()
    {
        return producer;
    }

    public void setProducer(String producer)
    {
        this.producer = producer;
    }

    public String getReleaseDate()
    {
        return releaseDate;
    }

    public void setReleaseDate(String releaseDate)
    {
        this.releaseDate = releaseDate;
    }

    public String getDescription()
    {
        return description;
    }

    public void setDescription(String description)
    {
        this.description = description;
    }

    public String getBookmarkNote()
    {
        return bookmarkNote;
    }

    public void setBookmarkNote(String bookmarkNote)
    {
        this.bookmarkNote = bookmarkNote;
    }
}
