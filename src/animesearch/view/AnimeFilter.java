package animesearch.view;

import java.awt.BorderLayout;
import java.awt.EventQueue;
import java.awt.GridLayout;

import javax.swing.JDialog;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.JLabel;
import javax.swing.JCheckBox;
import javax.swing.JComboBox;
import javax.swing.border.TitledBorder;
import javax.swing.UIManager;

import java.awt.Color;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.ArrayList;
import java.util.List;

public class AnimeFilter extends JDialog {

	private static final long serialVersionUID = 1L;
	
	private JPanel contentPane;
	private JComboBox<String> jcbSeasonFrom;
	private JComboBox<String> jcbSeasonTo;
	private JComboBox<String> jcbYearFrom;
	private JComboBox<String> jcbYearTo;
	
	private static final String[] GENRES = {"Action","Adventure","Comedy","Drama","Ecchi","Fantasy",
		"Harem","Horror","Martial Arts","Mecha","Music","Mystery","Magical Girl","Romance","Slice of Life",
		"Sports","Tragedy","Historical"};
	private static final String[] DEMOGRAPHICS = {"Shoujo", "Shounen", "Seinen", "Kodomo"};
	
	private List<ThreeStateButton> buttons;
	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					AnimeFilter frame = new AnimeFilter();
					frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	/**
	 * Create the frame.
	 */
	public AnimeFilter() {
		setType(Type.POPUP);
		setModal(true);
		setTitle("Filter");
		setDefaultCloseOperation(JDialog.DISPOSE_ON_CLOSE);
		setBounds(100, 100, 500, 380);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		JLabel lblCategories = new JLabel("Categories");
		lblCategories.setBounds(8, 11, 70, 14);
		contentPane.add(lblCategories);
		
		JLabel lblSeason = new JLabel("Season");
		lblSeason.setBounds(8, 224, 46, 14);
		contentPane.add(lblSeason);
		
		JCheckBox chckbxAllTime = new JCheckBox("All time");
		chckbxAllTime.setBounds(60, 220, 97, 23);
		contentPane.add(chckbxAllTime);
		
		JPanel jpnSeason = new JPanel();
		jpnSeason.setBorder(new TitledBorder(UIManager.getBorder("TitledBorder.border"), "", TitledBorder.LEADING, TitledBorder.TOP, null, new Color(0, 0, 0)));
		jpnSeason.setBounds(10, 248, 268, 83);
		contentPane.add(jpnSeason);
		jpnSeason.setLayout(null);
		
		JLabel lblFrom = new JLabel("From");
		lblFrom.setBounds(6, 19, 46, 14);
		jpnSeason.add(lblFrom);
		
		JLabel lblTo = new JLabel("To");
		lblTo.setBounds(6, 59, 46, 14);
		jpnSeason.add(lblTo);
		
		jcbSeasonFrom = new JComboBox<String>();
		jcbSeasonFrom.setBounds(62, 16, 100, 20);
		jpnSeason.add(jcbSeasonFrom);
		jcbSeasonFrom.setEditable(true);
		
		jcbSeasonTo = new JComboBox<String>();
		jcbSeasonTo.setBounds(62, 56, 100, 20);
		jpnSeason.add(jcbSeasonTo);
		jcbSeasonTo.setEditable(true);
		
		jcbYearFrom = new JComboBox<String>();
		jcbYearFrom.setBounds(202, 16, 60, 20);
		jpnSeason.add(jcbYearFrom);
		jcbYearFrom.setEditable(true);
		
		jcbYearTo = new JComboBox<String>();
		jcbYearTo.setBounds(202, 56, 60, 20);
		jpnSeason.add(jcbYearTo);
		jcbYearTo.setEditable(true);
		
//		JPanel jpnGenre = new JPanel();
//		jpnGenre.setBorder(new TitledBorder(UIManager.getBorder("TitledBorder.border"), "Genre", TitledBorder.LEADING, TitledBorder.TOP, null, Color.GRAY));
//		jpnGenre.setBounds(8, 35, 349, 178);
//		contentPane.add(jpnGenre);
//		jpnGenre.setLayout(null);
		
//		JCheckBox chckbxAction = new JCheckBox("Action");
//		chckbxAction.setBounds(6, 16, 97, 23);
//		jpnGenre.add(chckbxAction);
//		
//		JCheckBox chckbxAdventure = new JCheckBox("Adventure");
//		chckbxAdventure.setBounds(6, 42, 97, 23);
//		jpnGenre.add(chckbxAdventure);
//		
//		JCheckBox chckbxComedy = new JCheckBox("Comedy");
//		chckbxComedy.setBounds(6, 68, 97, 23);
//		jpnGenre.add(chckbxComedy);
//		
//		JCheckBox chckbxDrama = new JCheckBox("Drama");
//		chckbxDrama.setBounds(6, 94, 97, 23);
//		jpnGenre.add(chckbxDrama);
//		
//		JCheckBox chckbxEcchi = new JCheckBox("Ecchi");
//		chckbxEcchi.setBounds(6, 120, 97, 23);
//		jpnGenre.add(chckbxEcchi);
//		
//		JCheckBox chckbxFantasy = new JCheckBox("Fantasy");
//		chckbxFantasy.setBounds(6, 148, 97, 23);
//		jpnGenre.add(chckbxFantasy);
//		
//		JCheckBox chckbxHarem = new JCheckBox("Harem");
//		chckbxHarem.setBounds(126, 16, 97, 23);
//		jpnGenre.add(chckbxHarem);
//		
//		JCheckBox chckbxHorror = new JCheckBox("Horror");
//		chckbxHorror.setBounds(126, 42, 97, 23);
//		jpnGenre.add(chckbxHorror);
//		
//		JCheckBox chckbxMartialArts = new JCheckBox("Martial Arts");
//		chckbxMartialArts.setBounds(126, 120, 97, 23);
//		jpnGenre.add(chckbxMartialArts);
//		
//		JCheckBox chckbxMecha = new JCheckBox("Mecha");
//		chckbxMecha.setBounds(126, 148, 97, 23);
//		jpnGenre.add(chckbxMecha);
//		
//		JCheckBox chckbxMusic = new JCheckBox("Music");
//		chckbxMusic.setBounds(246, 16, 97, 23);
//		jpnGenre.add(chckbxMusic);
//		
//		JCheckBox chckbxMystery = new JCheckBox("Mystery");
//		chckbxMystery.setBounds(246, 42, 97, 23);
//		jpnGenre.add(chckbxMystery);
//		
//		JCheckBox chckbxMagicalGirl = new JCheckBox("Magical Girl");
//		chckbxMagicalGirl.setBounds(126, 94, 97, 23);
//		jpnGenre.add(chckbxMagicalGirl);
//		
//		JCheckBox chckbxRomance = new JCheckBox("Romance");
//		chckbxRomance.setBounds(246, 68, 97, 23);
//		jpnGenre.add(chckbxRomance);
//		
//		JCheckBox chckbxSliceOfLife = new JCheckBox("Slice of Life");
//		chckbxSliceOfLife.setBounds(246, 94, 97, 23);
//		jpnGenre.add(chckbxSliceOfLife);
//		
//		JCheckBox chckbxSports = new JCheckBox("Sports");
//		chckbxSports.setBounds(246, 120, 97, 23);
//		jpnGenre.add(chckbxSports);
//		
//		JCheckBox chckbxTragedy = new JCheckBox("Tragedy");
//		chckbxTragedy.setBounds(246, 148, 97, 23);
//		jpnGenre.add(chckbxTragedy);
//		
//		JCheckBox chckbxHistorical = new JCheckBox("Historical");
//		chckbxHistorical.setBounds(126, 68, 97, 23);
//		jpnGenre.add(chckbxHistorical);
		
		JPanel jpnGenre = new JPanel();
		jpnGenre.setBorder(new TitledBorder(UIManager.getBorder("TitledBorder.border"), "Genre", TitledBorder.LEADING, TitledBorder.TOP, null, Color.GRAY));
		jpnGenre.setBounds(8, 35, 349, 178);
		contentPane.add(jpnGenre);
		jpnGenre.setLayout(new GridLayout(0, 3));
		
		buttons = new ArrayList<ThreeStateButton>();
		
		for (int i = 0; i < GENRES.length; i++) {
			ThreeStateButton button = new ThreeStateButton();
			button.addActionListener(new ActionListener() {
				
				@Override
				public void actionPerformed(ActionEvent arg0) {
					button.changeState();
				}
			});
			buttons.add(button);
			JPanel smallPanel = new JPanel(new BorderLayout());
			smallPanel.add(buttons.get(i), BorderLayout.WEST);
			smallPanel.add(new JLabel(GENRES[i], JLabel.LEFT), BorderLayout.CENTER);
			jpnGenre.add(smallPanel);
		}
		
		JPanel jpnDemographic = new JPanel();
		jpnDemographic.setBorder(new TitledBorder(UIManager.getBorder("TitledBorder.border"), "Demographic", TitledBorder.LEADING, TitledBorder.TOP, null, Color.GRAY));
		jpnDemographic.setBounds(368, 35, 109, 178);
		contentPane.add(jpnDemographic);
		jpnDemographic.setLayout(null);
		
		JCheckBox chckbxShoujo = new JCheckBox("Shoujo");
		chckbxShoujo.setBounds(6, 68, 97, 23);
		jpnDemographic.add(chckbxShoujo);
		
		JCheckBox chckbxShounen = new JCheckBox("Shounen");
		chckbxShounen.setBounds(6, 94, 97, 23);
		jpnDemographic.add(chckbxShounen);
		
		JCheckBox chckbxSeinen = new JCheckBox("Seinen");
		chckbxSeinen.setBounds(6, 42, 97, 23);
		jpnDemographic.add(chckbxSeinen);
		
		JCheckBox chckbxKodomo = new JCheckBox("Kodomo");
		chckbxKodomo.setBounds(6, 16, 97, 23);
		jpnDemographic.add(chckbxKodomo);
		
		init();
	}
	
	private void init(){
		if (jcbYearFrom != null) {
			for (int i = 1991; i < 2014; i++) {
				jcbYearFrom.addItem("" + i);
			}
		}
		if (jcbYearTo != null) {
			for (int i = 1991; i < 2014; i++) {
				jcbYearTo.addItem("" + i);
			}
		}

		if (jcbSeasonFrom != null) {
			jcbSeasonFrom.addItem("Spring");
			jcbSeasonFrom.addItem("Summer");
			jcbSeasonFrom.addItem("Fall");
			jcbSeasonFrom.addItem("Winter");
		}
		
		if (jcbSeasonTo != null) {
			jcbSeasonTo.addItem("Spring");
			jcbSeasonTo.addItem("Summer");
			jcbSeasonTo.addItem("Fall");
			jcbSeasonTo.addItem("Winter");
		}
	}
	
	public String getAnimeFrom(){
		if ((jcbSeasonFrom != null) && (jcbYearFrom != null)) {
			String season = (String) jcbSeasonFrom.getSelectedItem();
			String year = (String) jcbYearFrom.getSelectedItem();
			return season + " " + year;
		}
		return null;
	}
	
	public String getAnimeTo(){
		if ((jcbSeasonTo != null) && (jcbYearTo != null)) {
			String season = (String) jcbSeasonTo.getSelectedItem();
			String year = (String) jcbYearTo.getSelectedItem();
			return season + " " + year;
		}
		return null;
	}
	
//	public void addButtonsActionListener(ActionListener listener){
//		for(int i =0; i<buttons.size(); i++){
//			buttons.get(i).addActionListener(new ActionListener() {
//				
//				@Override
//				public void actionPerformed(ActionEvent arg0) {
//					buttons.get(i).changeState();
//				}
//			});
//		}
//	}
}
