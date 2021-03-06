package animesearch.view;

import animesearch.model.AnimeInfo;
import animesearch.model.CharacterInfo;

import javax.swing.*;

import java.awt.*;
import java.awt.event.ActionListener;
import java.awt.event.MouseListener;
import java.awt.event.WindowListener;
import java.util.ArrayList;
import java.util.List;

public class MainView extends JFrame {

	private static final long serialVersionUID = 1L;

	private static final String TITLE = "Anime Search";
	private static final String BANNERURL = "img/banner.jpg";
	private static final String RANDOMANIME = "Anime you might want to watch:";
	private static final String SEARCH = "img/search.png";
	private static final String LOVE1 = "img/love1.png";
	private static final String LOVE2 = "img/love2.png";
	private static final String ANIME_COVER_FOLDER = "AnimeCover/";
	private static final String CHARACTER_IMAGE_FOLDER = "CharacterImage/";

	private JPanel randomPanel;
	private JTextField searchTextField;
	private JButton filterButton;
	private JButton bookmarkButton;
	private JList<JPanel> resultList;
	private DefaultListModel<JPanel> resultListModel;
	private PanelListCellRenderer resultRenderer;
	private ImageLabel resultImage;
	private TwoStateButton toggleButton;
	private TwoStateButtonBookmark loveButton;
	private JScrollPane informationPane;
	private JPanel informationPanel;
	private JList<JPanel> characterList;
	private DefaultListModel<JPanel> characterListModel;
	private PanelListCellRenderer characterRenderer;

	public MainView() {
		this.setResizable(false);
		this.setTitle(TITLE);
		this.setBounds(50, 5, 1200, 750);
		this.setLocationRelativeTo(null);  //Center window on screen
		this.setDefaultCloseOperation(WindowConstants.EXIT_ON_CLOSE);
		this.getContentPane().setLayout(new BorderLayout());
		this.getContentPane().setBackground(Theme.getColor(2));

		JPanel topPanel = new JPanel();
		topPanel.setBackground(Theme.getColor(0));
		topPanel.setPreferredSize(new Dimension(1000, 200));
		topPanel.setLayout(new BorderLayout());
		topPanel.setBorder(BorderFactory.createRaisedBevelBorder());
		this.getContentPane().add(topPanel, BorderLayout.NORTH);

		ImageLabel bannerLabel = new ImageLabel(BANNERURL, 800, 150);
		bannerLabel.setPreferredSize(new Dimension(800, 150));
		topPanel.add(bannerLabel, BorderLayout.WEST);

		randomPanel = new JPanel(new FlowLayout());
		randomPanel.setBackground(Theme.getColor(1));
		randomPanel.setPreferredSize(new Dimension(400, 150));
		topPanel.add(randomPanel, BorderLayout.EAST);

		JLabel randomLabel = new JLabel(RANDOMANIME, JLabel.CENTER);
		randomLabel.setFont(Theme.SMALLER_FONT);
		randomLabel.setForeground(Theme.getColor(4));
		randomLabel.setPreferredSize(new Dimension(380, 30));
		randomPanel.add(randomLabel);

		PatternPanel searchPanel = new PatternPanel(Theme.getPattern());
		searchPanel.setPreferredSize(new Dimension(1000, 50));
		searchPanel.setLayout(null);
		topPanel.add(searchPanel, BorderLayout.SOUTH);

		ImageLabel searchLabel = new ImageLabel(SEARCH, 100, 50);
		searchLabel.setBounds(10, 0, 100, 50);
		searchLabel.setOpaque(false);
		searchPanel.add(searchLabel);

		searchTextField = new JTextField();
		searchTextField.setToolTipText("Enter a part of anime/character name to search");
		searchTextField.setBounds(110, 10, 440, 30);
		searchPanel.add(searchTextField);

		toggleButton = new TwoStateButton();
		toggleButton.setBounds(560, 10, 30, 30);
		searchPanel.add(toggleButton);

		filterButton = new JButton("Filter");
		filterButton.setBackground(Theme.getColor(1));
		filterButton.setForeground(Theme.getColor(0));
		filterButton.setBounds(790, 10, 190, 30);
		searchPanel.add(filterButton);

		bookmarkButton = new JButton("Bookmark manager");
		bookmarkButton.setBackground(Theme.getColor(3));
		bookmarkButton.setForeground(Theme.getColor(0));
		bookmarkButton.setBounds(995, 10, 190, 30);
		searchPanel.add(bookmarkButton);

		JPanel bottomPanel = new JPanel();
		bottomPanel.setLayout(null);
		bottomPanel.setPreferredSize(new Dimension(1200, 520));
		bottomPanel.setOpaque(false);
		topPanel.setBorder(BorderFactory.createLoweredBevelBorder());
		this.getContentPane().add(bottomPanel, BorderLayout.SOUTH);

		JScrollPane leftPane = new JScrollPane();
		leftPane.setBounds(10, 10, 400, 500);
		bottomPanel.add(leftPane);

		resultList = new JList<JPanel>();
		resultListModel = new DefaultListModel<JPanel>();
		resultList.setModel(resultListModel);
		resultList.setBackground(Theme.getColor(3));
		leftPane.setViewportView(resultList);

		JPanel rightPanel = new JPanel();
		rightPanel.setLayout(null);
		rightPanel.setOpaque(false);
		rightPanel.setBounds(420, 10, 765, 500);
		bottomPanel.add(rightPanel);

		resultImage = new ImageLabel();
		resultImage.setBounds(10, 10, 170, 170);
		rightPanel.add(resultImage);

		loveButton = new TwoStateButtonBookmark();
		loveButton.setBounds(65, 200, 50, 50);
		rightPanel.add(loveButton);

		informationPane = new JScrollPane();
		informationPane.setBackground(Theme.getColor(4));
		informationPane.setBounds(200, 10, 560, 300);
		rightPanel.add(informationPane);

		JScrollPane characterPane = new JScrollPane();
		characterPane.setBounds(10, 330, 750, 170);
		rightPanel.add(characterPane);

		characterList = new JList<JPanel>();
		characterListModel = new DefaultListModel<JPanel>();
		characterList.setModel(characterListModel);
		characterList.setLayoutOrientation(JList.VERTICAL_WRAP);
		characterList.setBackground(Theme.getColor(3));
		characterList.setVisibleRowCount(-1);
		characterPane.setViewportView(characterList);
	}

	private JPanel getResultPanel(AnimeInfo animeInfo) {
		JPanel resultPanel = new JPanel();
		resultPanel.setPreferredSize(new Dimension(380, 100));
		resultPanel.setBackground(Theme.getColor(0));
		resultPanel.setBorder(BorderFactory.createMatteBorder(2, 0, 2, 0, Color.GRAY));
		resultPanel.setLayout(null);

		if (animeInfo.getMatchedCharacter() == null) {
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

		} else {
			ImageLabel avatarLabel = new ImageLabel(CHARACTER_IMAGE_FOLDER + animeInfo.getMatchedCharacter().getId() + "_" + animeInfo.getId() + "_" + ".jpg", 80, 80);
			avatarLabel.setBounds(10, 10, 80, 80);
			resultPanel.add(avatarLabel);

			JLabel name1Label = new JLabel(animeInfo.getMatchedCharacter().getName());
			name1Label.setBounds(120, 10, 250, 35);
			name1Label.setForeground(Theme.getColor(4));
			resultPanel.add(name1Label);

			JLabel name2Label = new JLabel("<html><font color='red'>In anime: </font>" + animeInfo.getEnglishTitle() + "</html>");
			name2Label.setBounds(120, 55, 250, 35);
			name2Label.setForeground(Theme.getColor(4));
			resultPanel.add(name2Label);
		}

		return resultPanel;
	}

	public void setRandomAnime(AnimeInfo animeInfo) {
		randomPanel.add(getResultPanel(animeInfo));
	}

	private JPanel getCharacterPanel(CharacterInfo characterInfo) {
		JPanel characterPanel = new JPanel();
		characterPanel.setPreferredSize(new Dimension(130, 150));
		characterPanel.setBackground(Theme.getColor(0));
		characterPanel.setBorder(BorderFactory.createMatteBorder(2, 0, 2, 0, Color.GRAY));
		characterPanel.setLayout(null);
		characterPanel.setToolTipText(characterInfo.getName());

		ImageLabel avatarLabel = new ImageLabel(CHARACTER_IMAGE_FOLDER + characterInfo.getId() + "_" + characterInfo.getAnimeId() + "_.jpg", 120, 120);
		avatarLabel.setBounds(10, 10, 110, 110);
		characterPanel.add(avatarLabel);

		JLabel nameLabel = new JLabel(characterInfo.getName(), JLabel.CENTER);
		nameLabel.setBounds(10, 120, 110, 20);
		nameLabel.setForeground(Theme.getColor(4));
		characterPanel.add(nameLabel);

		return characterPanel;
	}

	private JPanel getInformationPanel(AnimeInfo animeInfo) {
		informationPanel = new JPanel();
		informationPanel.setPreferredSize(new Dimension(320, 100));
		informationPanel.setBackground(Theme.getColor(0));
		informationPanel.setLayout(null);

		JLabel labelEngTitle = new JLabel("English title", JLabel.LEFT);
		labelEngTitle.setBounds(20, 0, 100, 30);
		labelEngTitle.setForeground(Theme.getColor(3));
		labelEngTitle.setBackground(Theme.getColor(4));
		informationPanel.add(labelEngTitle);

		JLabel labelEngTitleValue = new JLabel(animeInfo.getEnglishTitle(), JLabel.LEFT);
		labelEngTitleValue.setBounds(115, 0, 430, 30);
		labelEngTitleValue.setForeground(Theme.getColor(4));
		labelEngTitleValue.setToolTipText(animeInfo.getEnglishTitle());
		informationPanel.add(labelEngTitleValue);

		JLabel labelRomajiTitle = new JLabel("Romaji title", JLabel.LEFT);
		labelRomajiTitle.setBounds(20, 20, 100, 30);
		labelRomajiTitle.setForeground(Theme.getColor(3));
		labelRomajiTitle.setBackground(Theme.getColor(4));
		informationPanel.add(labelRomajiTitle);

		JLabel labelRomajiTitleValue = new JLabel(animeInfo.getRomajiTitle(), JLabel.LEFT);
		labelRomajiTitleValue.setBounds(115, 20, 430, 30);
		labelRomajiTitleValue.setForeground(Theme.getColor(4));
		labelRomajiTitleValue.setToolTipText(animeInfo.getRomajiTitle());
		informationPanel.add(labelRomajiTitleValue);

		JLabel labelSeason = new JLabel("Season", JLabel.LEFT);
		labelSeason.setBounds(20, 40, 100, 30);
		labelSeason.setForeground(Theme.getColor(3));
		informationPanel.add(labelSeason);

		JLabel labelSeasonValue = new JLabel(animeInfo.getSeason(), JLabel.LEFT);
		labelSeasonValue.setBounds(115, 40, 430, 30);
		labelSeasonValue.setForeground(Theme.getColor(4));
		labelSeasonValue.setToolTipText(animeInfo.getSeason());
		informationPanel.add(labelSeasonValue);

		JLabel labelProducer = new JLabel("Producer", JLabel.LEFT);
		labelProducer.setBounds(20, 60, 100, 30);
		labelProducer.setForeground(Theme.getColor(3));
		informationPanel.add(labelProducer);

		JLabelLink labelProducerValue = new JLabelLink(animeInfo.getProducer(), JLabel.LEFT);
		// For easily finding this label later, give it a name.
		labelProducerValue.setName("producer");
		labelProducerValue.setBounds(115, 60, 430, 30);
		labelProducerValue.setForeground(Theme.getColor(4));
		informationPanel.add(labelProducerValue);

		JLabel labelReleaseDate = new JLabel("Release date", JLabel.LEFT);
		labelReleaseDate.setBounds(20, 80, 100, 30);
		labelReleaseDate.setForeground(Theme.getColor(3));
		informationPanel.add(labelReleaseDate);

		JLabel labelReleaseDateValue = new JLabel(animeInfo.getReleaseDate(), JLabel.LEFT);
		labelReleaseDateValue.setBounds(115, 80, 430, 30);
		labelReleaseDateValue.setForeground(Theme.getColor(4));
		informationPanel.add(labelReleaseDateValue);

		JLabel labelGenre = new JLabel("Genre", JLabel.LEFT);
		labelGenre.setBounds(20, 100, 100, 30);
		labelGenre.setForeground(Theme.getColor(3));
		informationPanel.add(labelGenre);

		JLabel labelGenreValue = new JLabel(animeInfo.getGenre(), JLabel.LEFT);
		labelGenreValue.setBounds(115, 100, 430, 30);
		labelGenreValue.setForeground(Theme.getColor(4));
		labelGenreValue.setToolTipText(animeInfo.getGenre());
		informationPanel.add(labelGenreValue);

		JLabel labelDescription = new JLabel("Description", JLabel.LEFT);
		labelDescription.setBounds(20, 120, 100, 30);
		labelDescription.setForeground(Theme.getColor(3));
		informationPanel.add(labelDescription);

		JTextArea textAreaDescriptionValue = new JTextArea(animeInfo.getDescription());
		textAreaDescriptionValue.setBackground(Theme.getColor(4));
		textAreaDescriptionValue.setWrapStyleWord(true);
		textAreaDescriptionValue.setLineWrap(true);
		textAreaDescriptionValue.setEditable(false);

		JScrollPane paneDescription = new JScrollPane(textAreaDescriptionValue);
		paneDescription.setBounds(115, 130, 430, 150);
		informationPanel.add(paneDescription);

		resultImage.changeImage(ANIME_COVER_FOLDER + animeInfo.getId() + ".jpg");

		return informationPanel;
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
		resultListModel.clear();
		resultListModel.setSize(animeInfoList.size());
		resultRenderer = new PanelListCellRenderer();
		resultList.setCellRenderer(resultRenderer);
		for (int i = 0; i < animeInfoList.size(); i++) {
			final AnimeInfo animeInfo = animeInfoList.get(i);
			final int index = i;

			(new Thread() {
				@Override
				public void run() {
					synchronized (resultListModel) {
						resultListModel.set(index, getResultPanel(animeInfo));
					}
				}
			}).start();
		}
	}

	public void setListOfCharacter(AnimeInfo selectedAnime) {
		ArrayList<CharacterInfo> characters = selectedAnime.getCharacters();
		characterListModel.clear();
		characterListModel.setSize(characters.size());
		characterRenderer = new PanelListCellRenderer();
		characterList.setCellRenderer(characterRenderer);
		for (int i = 0; i < characters.size(); i++) {
			final CharacterInfo characterInfo = characters.get(i);
			final int index = i;
			(new Thread() {
				@Override
				public void run() {
					synchronized (characterListModel) {
						characterListModel.set(index, getCharacterPanel(characterInfo));
					}
				}
			}).start();
		}
	}

	public void setInformation(AnimeInfo animeInfo) {
		informationPane.setViewportView(getInformationPanel(animeInfo));
	}

	public String getTextInSearchTextField() {
		return searchTextField.getText();
	}

	public int getStateOfToggleButton() {
		return toggleButton.getState();
	}

	public int getStateOfLoveButton() {
		return loveButton.getState();
	}

	public void setStateOfLoveButton(int state) {
		loveButton.setState(state);
	}

	public void setLoveButtonEnabledState(boolean state) {
		loveButton.setEnabled(state);
	}

	public void addFilterButtonActionListerner(ActionListener listener) {
		filterButton.addActionListener(listener);
	}

	public void addBookmarkButtonActionListerner(ActionListener listener) {
		bookmarkButton.addActionListener(listener);
	}

	public void addLoveButtonActionListerner(ActionListener listener) {
		loveButton.addActionListener(listener);
	}

	public void addSearchTextFieldListener(ActionListener listener) {
		searchTextField.addActionListener(listener);
	}

	public void setResultListListener(MouseListener listener) {
		resultList.addMouseListener(listener);
	}

	public int getSelectedAnimeIndex() {
		return resultList.getSelectedIndex();
	}

	public void setProducerLabelMouseListener(MouseListener listener) {
		Component[] components = informationPanel.getComponents();
		for (Component c : components) {
			if (c instanceof JLabelLink && c.getName().equals("producer")) {
				((JLabelLink) c).setMouseClickListener(listener);

				// Already found what we need, break loop here
				break;
			}
		}
	}

	public void addMainViewWindowListener(WindowListener listener) {
		this.addWindowListener(listener);
	}
}
