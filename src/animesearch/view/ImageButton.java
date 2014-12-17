package animesearch.view;

import javax.imageio.ImageIO;
import javax.swing.*;

import java.awt.*;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.awt.image.BufferedImage;
import java.io.IOException;

public class ImageButton extends JButton {
	private static final long serialVersionUID = 1L;

	private ImageIcon defaultIcon;
	private ImageIcon hoverIcon;
	private boolean state;
	
	/**
	 * Create a normal JButton.
	 * */
	
	public ImageButton(){
		super();
	}
	
	/**
	 * Create a newHoverButton Object.
	 * @param img1 url of normal image of the button
	 * @param img2 url hover image of the button
	 * @param width button width
	 * @param height button height
	 * */
	
	public ImageButton(String img1, String img2, int width, int height){
		super();
		try {
			BufferedImage defaultImg = ImageIO.read(getClass().getResource(img1));
			BufferedImage hoverImg = ImageIO.read(getClass().getResource(img2));
			defaultIcon = new ImageIcon(defaultImg);
			hoverIcon = new ImageIcon(hoverImg);
		} catch (IOException e) {
			e.printStackTrace();
		}
		state = false;
		setIcon(defaultIcon);
		//setRolloverIcon(hoverIcon);
		setPreferredSize(new Dimension(width,height));
		setBorder(null);
		setOpaque(false);
		setContentAreaFilled(false);
		setBorderPainted(false);
		
		addMouseListener(new MouseAdapter() {
			@Override
			public void mouseEntered(MouseEvent e) {
				// TODO Auto-generated method stub
				state = true;
				hover();
			}
			
			@Override
			public void mouseExited(MouseEvent e) {
				// TODO Auto-generated method stub
				state = false;
				hover();
			}
		});
	}
	
	/**
	 * Hover the button.
	 * */
	
	public void hover(){
		if(state){
			setIcon(hoverIcon);
		} else {
			setIcon(defaultIcon);
		}
	}
}

