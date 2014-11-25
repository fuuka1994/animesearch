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

public class TwoStateButtonBookmark extends JButton {
	public static final int BOOKMARK_OFF = 0;
	public static final int BOOKMARK_ON = 1;

	private static final long serialVersionUID = 1L;
	private static final String[] IMG = { "img/love1.png", "img/love2.png" };
	private int state;
	private List<ImageIcon> icons;

	public TwoStateButtonBookmark() {
		// TODO Auto-generated constructor stub
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

		state = BOOKMARK_OFF;
		setIcon(icons.get(state));
		setPreferredSize(new Dimension(50, 50));
		setBorder(null);
		setOpaque(false);
		setContentAreaFilled(false);
		setBorderPainted(false);
		setToolTipText("Click to add to bookmark or remove from bookmark");

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

	public void setState(int state) {
		this.state = state;
		setIcon(icons.get(state));
	}

	public int getState() {
		return state;
	}
}
