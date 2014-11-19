package animesearch.view;

import java.awt.Dimension;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.imageio.ImageIO;
import javax.swing.ImageIcon;
import javax.swing.JButton;

public class ThreeStateButton extends JButton {

	private static final String[] IMG = {"img/or.jpg","img/and.jpg","img/not.jpg"};
	public static final int OR = 0;
	public static final int AND = 1;
	public static final int NOT = 2;
	
	private static final long serialVersionUID = 1L;
	
	private int state;
	private List<ImageIcon> icons;

	public ThreeStateButton() {
		super();
		try {
			icons = new ArrayList<ImageIcon>();
			for(int i = 0; i<IMG.length; i++){
				BufferedImage bf = ImageIO.read(getClass().getResource(IMG[i]));
				icons.add(new ImageIcon(bf));
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
		state = OR;
		setIcon(icons.get(state));
		setPreferredSize(new Dimension(20,20));
		setBorder(null);
		setOpaque(false);
		setContentAreaFilled(false);
		setBorderPainted(false);
	}

	public void changeState(){
		state = (state + 1) % IMG.length;
		setIcon(icons.get(state));
	}
	
	public int getState(){
		return state;
	}
}
