package animesearch.model;

/*
 * Class for simplifying creating and formatting SQL clauses
 */
public class SQLClause {

    private String clause;
    private String separator;
    private String spaceBuffer;

    private final String type;

    public SQLClause(String type) {
        reset();
        this.type = type;

        spaceBuffer = " ";
        for (int i = 0; i < type.length(); i++) {
            spaceBuffer += " ";
        }
    }

    public SQLClause(String type, String separator) {
        this(type);
        setSeparator(separator);
    }

    public void reset() {
        clause = "";
    }

    public SQLClause append(String toBeAppended) {
        if (isEmptyClause()) {
            clause += type + " " + toBeAppended;    // Ex: "FROM Genre"
        } else {
            if (hasSeparator()) {
                clause += " " + separator + "\n";
            }
            clause += spaceBuffer + toBeAppended;   // Ex: "FROM Genre ,\n
                                                    //           Season", if separator is ","
        }

        return this;
    }

    private boolean isEmptyClause() {
        return clause.equals("");
    }

    private boolean hasSeparator() {
        return separator != null;
    }

    public void setSeparator(String separator) {
        this.separator = separator;
    }

    public String getClause() {
        if (isEmptyClause())
            return "";
        else
            return clause + "\n";
    }
}
