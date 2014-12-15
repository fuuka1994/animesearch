package animesearch.view;

import animesearch.model.AnimeInfo;
import animesearch.model.CharacterInfo;
import animesearch.view.ImageLabel;
import animesearch.view.ImageButton;
import animesearch.view.PatternPanel;
import animesearch.view.Theme;
import animesearch.view.MainView.PanelListCellRenderer;

import javax.swing.*;

import java.awt.*;
import java.awt.event.ActionListener;
import java.awt.event.MouseListener;
import java.util.List;
import java.awt.EventQueue;

import javax.swing.DefaultListModel;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JList;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.ListCellRenderer;
import javax.swing.border.EmptyBorder;

import java.awt.Window.Type;

public class BookmarkView extends JFrame {

	private static final long serialVersionUID = 1L;

	private static final String BM1 = "img/bookmark_add_gray.png";
	private static final String BM2 = "img/bookmark_add.png";
	private static final String UBM1 = "img/bookmark_delete_gray.png";
	private static final String UBM2 = "img/bookmark_delete.png";
	private static final String ANIME_COVER_FOLDER = "AnimeCover/";
	
	
	private JPanel contentPane;
	private JPanel buttonPane;
	private ImageButton bookmarkButton;
	private ImageButton unbookmarkButton;
	private JList<JPanel> bookmarkList;
	private DefaultListModel<JPanel> bookmarkListModel;
	private PanelListCellRenderer resultRenderer;

	/**
	 * Create the frame.
	 */
	public BookmarkView() {
		setType(Type.POPUP);
		setResizable(false);
		setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
		setBounds(0, 0, 580, 388);
		getContentPane().setBackground(Theme.getColor(2));
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		buttonPane = new JPanel();
		buttonPane.setBounds(5, 5, 60, 350);
		contentPane.add(buttonPane);
		buttonPane.setLayout(null);
		buttonPane.setBackground(Theme.getColor(3));
		
		bookmarkButton = new ImageButton(BM1, BM2, 50, 50);
		bookmarkButton.setToolTipText("Bookmark");
		bookmarkButton.setBounds(5, 120, 50, 50);
		buttonPane.add(bookmarkButton);
		
		unbookmarkButton = new ImageButton(UBM1, UBM2, 50, 50);
		unbookmarkButton.setToolTipText("Unbookmark");
		unbookmarkButton.setBounds(5, 180, 50, 50);
		buttonPane.add(unbookmarkButton);
		
		JScrollPane bookmarkListPane = new JScrollPane();
		bookmarkListPane.setBounds(70, 5, 500, 350);
		contentPane.add(bookmarkListPane);

		bookmarkList = new JList<JPanel>();
		bookmarkListModel = new DefaultListModel<JPanel>();
		bookmarkList.setModel(bookmarkListModel);
		bookmarkList.setBackground(Theme.getColor(3));
		bookmarkListPane.setViewportView(bookmarkList);
		
	}
	
	private JPanel getResultPanel(AnimeInfo animeInfo) {
		JPanel resultPanel = new JPanel();
		resultPanel.setPreferredSize(new Dimension(380, 100));
		resultPanel.setBackground(Theme.getColor(0));
		resultPanel.setLayout(null);

		ImageLabel avatarLabel = new ImageLabel(ANIME_COVER_FOLDER + Integer.toString(animeInfo.getId()) + ".jpg", 80, 80);
		avatarLabel.setBounds(10, 10, 80, 80);
		resultPanel.add(avatarLabel);

		JLabel name1Label = new JLabel(animeInfo.getEnglishTitle());
		name1Label.setBounds(120, 10, 250, 35);
		name1Label.setForeground(Theme.getColor(4));
		resultPanel.add(name1Label);

		JLabel name2Label = new JLabel(animeInfo.getRomajiTitle());
		name2Label.setBounds(120, 55, 250, 35);
		name2Label.setForeground(Theme.getColor(4));
		resultPanel.add(name2Label);

		return resultPanel;
	}
	
	class PanelListCellRenderer implements ListCellRenderer<JPanel> {

		@Override
		public Component getListCellRendererComponent(JList<? extends JPanel> list, JPanel value, int index, boolean isSelected, boolean cellHasFocus) {
			if (value != null) {
				if (isSelected) {
					value.setBackground(Theme.getColor(2));
				} else {
					value.setBackground(Theme.getColor(0));
				}
				return value;
			} else {
				return new JLabel("???");
			}
		}
	}
	
	public void setListOfResult(List<AnimeInfo> animeInfoList) {
		bookmarkListModel.clear();
		resultRenderer = new PanelListCellRenderer();
		bookmarkList.setCellRenderer(resultRenderer);
		for (AnimeInfo animeInfo : animeInfoList) {
			bookmarkListModel.addElement(getResultPanel(animeInfo));
		}
	}
	
	public void setbookmarkListListener(MouseListener listener) {
		bookmarkList.addMouseListener(listener);
	}

	public int getSelectedAnimeIndex() {
		return bookmarkList.getSelectedIndex();
	}
	
	public void addBookmarkButtonActionListener(ActionListener listener) {
		bookmarkButton.addActionListener(listener);
	}
	
	public void addUnbookmarkButtonActionListener(ActionListener listener) {
		unbookmarkButton.addActionListener(listener);
	}

}
