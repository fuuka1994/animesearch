package animesearch.view;

import javax.swing.*;
import java.awt.*;
import java.awt.event.MouseListener;

public class JLabelLink extends JLabel
{
    private static final String DEFAULT_COLOR = "blue";
    public JLabelLink(String text)
    {
        super();
        setText(makeLink(text, DEFAULT_COLOR));
        setCursor(new Cursor(Cursor.HAND_CURSOR));
    }

    public JLabelLink(String text, int horizontalAlignment)
    {
        super("", horizontalAlignment);
        setText(makeLink(text, DEFAULT_COLOR));
        setCursor(new Cursor(Cursor.HAND_CURSOR));
    }

    private String makeLink(String text, String color)
    {
        return "<html><font color='" + color + "'>" + text + "</font></html>";
    }

    public void setMouseClickListener(MouseListener listener)
    {
        this.addMouseListener(listener);
    }
}
