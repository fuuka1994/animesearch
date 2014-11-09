package animesearch.view;

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

    private static final String NOTFOUND = "img/notfound.jpg";

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
        this.setBounds(150, 5, 1000, 680);
        this.setDefaultCloseOperation(EXIT_ON_CLOSE);
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
        bottomPanel.setPreferredSize(new Dimension(1000, 450));
        bottomPanel.setOpaque(false);
        this.getContentPane().add(bottomPanel, BorderLayout.SOUTH);

        JScrollPane leftPane = new JScrollPane();
        leftPane.setBounds(10, 10, 400, 430);
        bottomPanel.add(leftPane);

        resultList = new JList<JPanel>();
        resultListModel = new DefaultListModel<JPanel>();
        resultList.setModel(resultListModel);
        resultList.setBackground(Theme.getColor(3));
        leftPane.setViewportView(resultList);

        JPanel rightPanel = new JPanel();
        rightPanel.setLayout(null);
//		rightPanel.setBackground(Theme.getColor(4));
        rightPanel.setOpaque(false);
        rightPanel.setBounds(420, 10, 565, 430);
        bottomPanel.add(rightPanel);

        resultImage = new ImageLabel(NOTFOUND, 200, 200);
        resultImage.setBounds(10, 10, 200, 200);
        rightPanel.add(resultImage);

        loveButton = new ImageButton(LOVE1, LOVE2, 50, 50);
        loveButton.setBounds(85, 220, 50, 50);
        rightPanel.add(loveButton);

        informationPane = new JScrollPane();
        informationPane.setBackground(Theme.getColor(4));
        informationPane.setBounds(220, 10, 345, 260);
        rightPanel.add(informationPane);

    }

    private JPanel getResultPanel(ObjectToTest objectToTest) {
        JPanel resultPanel = new JPanel();
        resultPanel.setPreferredSize(new Dimension(380, 100));
        resultPanel.setBackground(Theme.getColor(0));
        resultPanel.setLayout(null);

        ImageLabel avatarLabel = new ImageLabel(objectToTest.getAvatar(), 80, 80);
        avatarLabel.setBounds(10, 10, 80, 80);
        resultPanel.add(avatarLabel);

        JLabel name1Label = new JLabel(objectToTest.getName1());
        name1Label.setBounds(120, 10, 250, 35);
        name1Label.setForeground(Theme.getColor(4));
        resultPanel.add(name1Label);

        JLabel name2Label = new JLabel(objectToTest.getName2());
        name2Label.setBounds(120, 55, 250, 35);
        name2Label.setForeground(Theme.getColor(4));
        resultPanel.add(name2Label);

        return resultPanel;
    }

    private JPanel getInformationPanel(ObjectToTest objectToTest) {
        JPanel informationPanel = new JPanel();
        informationPanel.setPreferredSize(new Dimension(320, 100));
        informationPanel.setBackground(Theme.getColor(0));
        informationPanel.setLayout(null);

        JLabel label0 = new JLabel(ObjectToTest.PROPERTY[0], JLabel.CENTER);
        label0.setBounds(0, 0, 120, 30);
        label0.setForeground(Theme.getColor(3));
        label0.setBackground(Theme.getColor(4));
        informationPanel.add(label0);

        JLabel label0_value = new JLabel(objectToTest.getName1(), JLabel.CENTER);
        label0_value.setBounds(125, 0, 190, 30);
        label0_value.setForeground(Theme.getColor(4));
        informationPanel.add(label0_value);

        JLabel label1 = new JLabel(ObjectToTest.PROPERTY[1], JLabel.CENTER);
        label1.setBounds(0, 35, 120, 30);
        label1.setForeground(Theme.getColor(3));
        label1.setBackground(Theme.getColor(4));
        informationPanel.add(label1);

        JLabel label1_value = new JLabel(objectToTest.getName2(), JLabel.CENTER);
        label1_value.setBounds(125, 35, 190, 30);
        label1_value.setForeground(Theme.getColor(4));
        informationPanel.add(label1_value);

        return informationPanel;
    }

    class PanelListCellRenderer implements ListCellRenderer<JPanel> {

        @Override
        public Component getListCellRendererComponent(
                JList<? extends JPanel> list, JPanel value, int index,
                boolean isSelected, boolean cellHasFocus) {
            if (value instanceof JPanel) {
                Component component = (Component) value;
                if (isSelected) {
                    component.setBackground(Theme.getColor(2));
                } else {
                    component.setBackground(Theme.getColor(0));
                }
                return component;
            } else {
                return new JLabel("???");
            }
        }
    }

    public void setListOfResult(List<ObjectToTest> objectsToTests) {
        resultListModel.clear();
        resultRenderer = new PanelListCellRenderer();
        resultList.setCellRenderer(resultRenderer);
        for (int i = 0; i < objectsToTests.size(); i++) {
            resultListModel.addElement(getResultPanel(objectsToTests.get(i)));
        }
    }

    public void setInformation(ObjectToTest objectToTest) {
        informationPane.setViewportView(getInformationPanel(objectToTest));
    }

    public static void main(String[] args) {
        MainView view = new MainView();
        view.setVisible(true);
        List<ObjectToTest> objectList = new ArrayList<ObjectToTest>();
        objectList.add(new ObjectToTest("img/test1.jpg", "Name1 Of Obj1",
                "Name2 Of Obj1"));
        objectList.add(new ObjectToTest("img/test2.jpg", "Name1 Of Obj2",
                "Name2 Of Obj2"));
        objectList.add(new ObjectToTest("img/test3.jpg", "Name1 Of Obj3",
                "Name2 Of Obj3"));
        objectList.add(new ObjectToTest("img/test1.jpg", "Name1 Of Obj1",
                "Name2 Of Obj1"));
        objectList.add(new ObjectToTest("img/test2.jpg", "Name1 Of Obj2",
                "Name2 Of Obj2"));
        objectList.add(new ObjectToTest("img/test3.jpg", "Name1 Of Obj3",
                "Name2 Of Obj3"));
        objectList.add(new ObjectToTest("img/test1.jpg", "Name1 Of Obj1",
                "Name2 Of Obj1"));
        objectList.add(new ObjectToTest("img/test2.jpg", "Name1 Of Obj2",
                "Name2 Of Obj2"));
        objectList.add(new ObjectToTest("img/test3.jpg", "Name1 Of Obj3",
                "Name2 Of Obj3"));
        view.setListOfResult(objectList);
        view.setInformation(objectList.get(4));
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
