package animesearch.view;

import animesearch.model.AnimeInfo;

import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionListener;
import java.util.ArrayList;
import java.util.List;

public class MainView extends JFrame {

    private static final long serialVersionUID = 1L;

    private static final String TITLE = "Anime Search";
    private static final String BANNERURL = "img/banner.jpg";
    private static final String SEARCH = "img/search.png";
    private static final String TOGGLE1 = "img/toggle1.png";
    private static final String TOGGLE2 = "img/toggle2.png";
    private static final String LOVE1 = "img/love1.png";
    private static final String LOVE2 = "img/love2.png";
    private static final String ANIME_COVER_FOLDER = "AnimeCover/";


    private JTextField searchTextField;
    private JButton filterButton;
    private JButton bookmarkButton;
    private JList<JPanel> resultList;
    private DefaultListModel<JPanel> resultListModel;
    private PanelListCellRenderer resultRenderer;
    private ImageLabel resultImage;
    private ImageButton toggleButton;
    private ImageButton loveButton;
    private JScrollPane informationPane;

    public MainView() {
        this.setResizable(false);
        this.setTitle(TITLE);
        this.setBounds(50, 5, 1200, 750);
        this.setDefaultCloseOperation(WindowConstants.EXIT_ON_CLOSE);
        this.getContentPane().setLayout(new BorderLayout());
        this.getContentPane().setBackground(Theme.getColor(2));

        JPanel topPanel = new JPanel();
        topPanel.setBackground(Theme.getColor(0));
        topPanel.setPreferredSize(new Dimension(1000, 200));
        topPanel.setLayout(new BorderLayout());
        this.getContentPane().add(topPanel, BorderLayout.NORTH);

        ImageLabel bannerLabel = new ImageLabel(BANNERURL, 1000, 150);
        bannerLabel.setPreferredSize(new Dimension(1000, 150));
        topPanel.add(bannerLabel, BorderLayout.NORTH);

        PatternPanel searchPanel = new PatternPanel(Theme.getPattern());
        searchPanel.setPreferredSize(new Dimension(1000, 50));
        searchPanel.setLayout(null);
        topPanel.add(searchPanel, BorderLayout.SOUTH);

        ImageLabel searchLabel = new ImageLabel(SEARCH, 100, 50);
        searchLabel.setBounds(10, 0, 100, 50);
        searchLabel.setOpaque(false);
        searchPanel.add(searchLabel);

        searchTextField = new JTextField();
        searchTextField.setBounds(110, 10, 440, 30);
        searchPanel.add(searchTextField);

        toggleButton = new ImageButton(TOGGLE1, TOGGLE2, 30, 30);
        toggleButton.setBounds(560, 10, 30, 30);
        searchPanel.add(toggleButton);

        filterButton = new JButton("Filter");
        filterButton.setBackground(Theme.getColor(1));
        filterButton.setForeground(Theme.getColor(0));
        filterButton.setBounds(600, 10, 190, 30);
        searchPanel.add(filterButton);

        bookmarkButton = new JButton("Bookmark manager");
        bookmarkButton.setBackground(Theme.getColor(3));
        bookmarkButton.setForeground(Theme.getColor(0));
        bookmarkButton.setBounds(795, 10, 190, 30);
        searchPanel.add(bookmarkButton);

        JPanel bottomPanel = new JPanel();
        bottomPanel.setLayout(null);
        bottomPanel.setPreferredSize(new Dimension(1200, 520));
        bottomPanel.setOpaque(false);
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

        loveButton = new ImageButton(LOVE1, LOVE2, 50, 50);
        loveButton.setBounds(65, 200, 50, 50);
        rightPanel.add(loveButton);

        informationPane = new JScrollPane();
        informationPane.setBackground(Theme.getColor(4));
        informationPane.setBounds(200, 10, 565, 300);
        rightPanel.add(informationPane);

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

    private JPanel getInformationPanel(AnimeInfo animeInfo) {
        JPanel informationPanel = new JPanel();
        informationPanel.setPreferredSize(new Dimension(320, 100));
        informationPanel.setBackground(Theme.getColor(0));
        informationPanel.setLayout(null);

        JLabel labelEngTitle = new JLabel("English title", JLabel.LEFT);
        labelEngTitle.setBounds(20, 0, 100, 30);
        labelEngTitle.setForeground(Theme.getColor(3));
        labelEngTitle.setBackground(Theme.getColor(4));
        informationPanel.add(labelEngTitle);

        JLabel labelEngTitleValue = new JLabel("<html>" + animeInfo.getEnglishTitle() + "</html>", JLabel.LEFT);
        labelEngTitleValue.setBounds(115, 0, 430, 30);
        labelEngTitleValue.setForeground(Theme.getColor(4));
        informationPanel.add(labelEngTitleValue);

        JLabel labelRomajiTitle = new JLabel("Romaji title", JLabel.LEFT);
        labelRomajiTitle.setBounds(20, 20, 100, 30);
        labelRomajiTitle.setForeground(Theme.getColor(3));
        labelRomajiTitle.setBackground(Theme.getColor(4));
        informationPanel.add(labelRomajiTitle);

        JLabel labelRomajiTitleValue = new JLabel("<html>" + animeInfo.getRomajiTitle() + "</html>", JLabel.LEFT);
        labelRomajiTitleValue.setBounds(115, 20, 430, 30);
        labelRomajiTitleValue.setForeground(Theme.getColor(4));
        informationPanel.add(labelRomajiTitleValue);

        JLabel labelSeason = new JLabel("Season", JLabel.LEFT);
        labelSeason.setBounds(20, 40, 100, 30);
        labelSeason.setForeground(Theme.getColor(3));
        informationPanel.add(labelSeason);

        JLabel labelSeasonValue = new JLabel(animeInfo.getSeason(), JLabel.LEFT);
        labelSeasonValue.setBounds(115, 40, 430, 30);
        labelSeasonValue.setForeground(Theme.getColor(4));
        informationPanel.add(labelSeasonValue);

        JLabel labelProducer = new JLabel("Producer", JLabel.LEFT);
        labelProducer.setBounds(20, 60, 100, 30);
        labelProducer.setForeground(Theme.getColor(3));
        informationPanel.add(labelProducer);

        JLabel labelProducerValue = new JLabel(animeInfo.getProducer(), JLabel.LEFT);
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

        JLabel labelDescription = new JLabel("Description", JLabel.LEFT);
        labelDescription.setBounds(20, 100, 100, 30);
        labelDescription.setForeground(Theme.getColor(3));
        informationPanel.add(labelDescription);

        JTextArea textAreaDescriptionValue = new JTextArea(animeInfo.getDescription());
        textAreaDescriptionValue.setBackground(Theme.getColor(4));
        textAreaDescriptionValue.setWrapStyleWord(true);
        textAreaDescriptionValue.setLineWrap(true);

        JScrollPane paneDescription = new JScrollPane(textAreaDescriptionValue);
        paneDescription.setBounds(115, 110, 430, 170);
        informationPanel.add(paneDescription);

        resultImage.changeImage(ANIME_COVER_FOLDER + animeInfo.getId() + ".jpg");

        return informationPanel;
    }

    class PanelListCellRenderer implements ListCellRenderer<JPanel> {

        @Override
        public Component getListCellRendererComponent(
                JList<? extends JPanel> list, JPanel value, int index,
                boolean isSelected, boolean cellHasFocus) {
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
        resultRenderer = new PanelListCellRenderer();
        resultList.setCellRenderer(resultRenderer);
        for (AnimeInfo animeInfo : animeInfoList) {
            resultListModel.addElement(getResultPanel(animeInfo));
        }
    }

    public void setInformation(AnimeInfo animeInfo) {
        informationPane.setViewportView(getInformationPanel(animeInfo));
    }

    public static void main(String[] args) {
        MainView view = new MainView();
        view.setVisible(true);
        List<AnimeInfo> objectList = new ArrayList<AnimeInfo>();

        AnimeInfo animeInfo = new AnimeInfo();
        animeInfo.setRomajiTitle("Yahari ore no seishun love come ga machigatteru");
        animeInfo.setEnglishTitle("It's so true that my teenage love is wrong");
        animeInfo.setSeason("Summer 2012");
        animeInfo.setProducer("Aniplex");
        animeInfo.setReleaseDate("27/7/2012");
        animeInfo.setDescription("My Teen Romantic Comedy SNAFU (やはり俺の青春ラブコメはまちがっている。 Yahari Ore no Seishun Rabu Kome wa Machigatteiru.?, lit. \"My youth romantic comedy is wrong as I expected.\"), also known in the short forms Hamachi (はまち?) and OreGairu (俺ガイル?),[2] is a Japanese light novel series written by Wataru Watari and illustrated by Ponkan8. There are four ongoing manga adaptations and two anthology volumes. It has been adapted into an anime television series, which aired between April 4 and June 27, 2013. A video game, titled Yahari Game demo Ore no Seishun Rabu Kome wa Machigatteiru. and published by 5pb., for the PlayStation Vita was released on September 19, 2013. A second season will begin airing in 2015.");
        animeInfo.setId(1090);
        view.setInformation(animeInfo);

        objectList.add(animeInfo);
        view.setListOfResult(objectList);
    }

    public void addToggleButtonActionListerner(ActionListener listener) {
        toggleButton.addActionListener(listener);
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

}
