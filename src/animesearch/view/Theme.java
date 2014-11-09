package animesearch.view;

import java.awt.Color;
import java.awt.Font;

public class Theme {
	
	private static Color[] palette = {new Color(Integer.parseInt("576F6F", 16)), new Color(Integer.parseInt("00AEA5", 16)),
		new Color(Integer.parseInt("45BF8E", 16)), new Color(Integer.parseInt("8ACF77", 16)), new Color(Integer.parseInt("CFE060", 16))};
	
	private static String pattern = "img/pattern.png";
	
	public static final Font BIGGER_FONT = new Font(Font.SERIF, Font.BOLD, 30);
	public static final Font SMALLER_FONT = new Font(Font.SERIF, Font.PLAIN, 20);
	
	public static Color getColor(int colorID){
		return palette[colorID];
			
	}
	
	public static String getPattern(){
		return pattern;
	}
	
}