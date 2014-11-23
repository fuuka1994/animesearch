package animesearch.view;

import java.awt.Dimension;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.imageio.ImageIO;
import javax.swing.ImageIcon;
import javax.swing.JButton;

public class TwoStateButton extends JButton {

	public static final int ANIME_MODE = 0;
	public static final int CHARACTER_MODE = 1;

	private static final long serialVersionUID = 1L;
	private static final String[] IMG = { "img/toggle1.png", "img/toggle2.png" };
	private int state;
	private List<ImageIcon> icons;

	public TwoStateButton() {
		super();
		icons = new ArrayList<ImageIcon>();
		try {
			for (int i = 0; i < IMG.length; i++) {
				BufferedImage bf = ImageIO.read(getClass().getResource(IMG[i]));
				icons.add(new ImageIcon(bf));
			}
		} catch (IOException exception) {
			exception.printStackTrace();
		}

		state = ANIME_MODE;
		setIcon(icons.get(state));
		setPreferredSize(new Dimension(30, 30));
		setBorder(null);
		setOpaque(false);
		setContentAreaFilled(false);
		setBorderPainted(false);
		setToolTipText("Click to toggle search mode between Anime and Character search");

		addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent e) {
				// TODO Auto-generated method stub
				changeState();
			}
		});
	}

	public void changeState() {
		state = (state + 1) % IMG.length;
		setIcon(icons.get(state));
	}

	public int getState() {
		return state;
	}
}
