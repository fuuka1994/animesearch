package animesearch.view;

import javax.swing.*;
import javax.swing.border.EmptyBorder;
import javax.swing.border.TitledBorder;
import java.awt.*;
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
	private JCheckBox chckbxAllTime;
	private JButton btnOk;

	private static final String[] GENRES = { "Action", "Adventure", "Comedy", "Drama", "Ecchi", "Fantasy", "Harem", "Horror", "Martial Arts", "Mecha", "Music", "Mystery", "Magical Girl", "Romance", "Slice of Life", "Sports", "Tragedy", "Historical" };
	private static final String[] DEMOGRAPHICS = { "Shoujo", "Shounen", "Seinen", "Kodomo" };

	private List<ThreeStateButton> genreButtons;
	private List<ThreeStateButton> demographicButtons;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					final AnimeFilter frame = new AnimeFilter();
					frame.setBtnOKActionListener(new ActionListener() {

						@Override
						public void actionPerformed(ActionEvent e) {
							// TODO Auto-generated method stub
							System.out.println("FUCKING PRINT THIS LINE");
							System.out.println("AND: " + frame.getMustHaveGenreAND() + "\nNOT: " + frame.getExcludeGenreNOT());
						}
					});
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

		chckbxAllTime = new JCheckBox("All time");
		chckbxAllTime.setBounds(60, 220, 97, 23);
		chckbxAllTime.addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent arg0) {
				changeComboBoxMode();
			}
		});
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

		JPanel jpnGenre = new JPanel();
		jpnGenre.setBorder(new TitledBorder(UIManager.getBorder("TitledBorder.border"), "Genre", TitledBorder.LEADING, TitledBorder.TOP, null, Color.GRAY));
		jpnGenre.setBounds(8, 35, 349, 178);
		contentPane.add(jpnGenre);
		jpnGenre.setLayout(new GridLayout(0, 3));

		genreButtons = new ArrayList<ThreeStateButton>();

		for (int i = 0; i < GENRES.length; i++) {
			final ThreeStateButton button = new ThreeStateButton();
			button.addActionListener(new ActionListener() {

				@Override
				public void actionPerformed(ActionEvent arg0) {
					button.changeState();
				}
			});
			genreButtons.add(button);
			JPanel smallPanel = new JPanel(new BorderLayout());
			smallPanel.add(genreButtons.get(i), BorderLayout.WEST);
			smallPanel.add(new JLabel(GENRES[i], JLabel.LEFT), BorderLayout.CENTER);
			jpnGenre.add(smallPanel);
		}

		JPanel jpnDemographic = new JPanel();
		jpnDemographic.setBorder(new TitledBorder(UIManager.getBorder("TitledBorder.border"), "Demographic", TitledBorder.LEADING, TitledBorder.TOP, null, Color.GRAY));
		jpnDemographic.setBounds(368, 35, 109, 178);
		contentPane.add(jpnDemographic);
		jpnDemographic.setLayout(new GridLayout(0, 1));

		btnOk = new JButton("OK");
		btnOk.setBounds(345, 280, 89, 23);
		contentPane.add(btnOk);

		demographicButtons = new ArrayList<ThreeStateButton>();

		for (int i = 0; i < DEMOGRAPHICS.length; i++) {
			final ThreeStateButton button = new ThreeStateButton();
			button.addActionListener(new ActionListener() {

				@Override
				public void actionPerformed(ActionEvent arg0) {
					button.changeState();
				}
			});
			demographicButtons.add(button);
			JPanel smallPanel = new JPanel(new BorderLayout());
			smallPanel.add(demographicButtons.get(i), BorderLayout.WEST);
			smallPanel.add(new JLabel(DEMOGRAPHICS[i], JLabel.LEFT), BorderLayout.CENTER);
			jpnDemographic.add(smallPanel);
		}

		init();
		chckbxAllTime.doClick();
	}

	private void init() {
		if (jcbYearFrom != null) {
			for (int i = 1991; i <= 2014; i++) {
				jcbYearFrom.addItem("" + i);
			}
		}
		if (jcbYearTo != null) {
			for (int i = 1991; i <= 2014; i++) {
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

	private void changeComboBoxMode() {
		jcbSeasonFrom.setEnabled(!chckbxAllTime.isSelected());
		jcbSeasonTo.setEnabled(!chckbxAllTime.isSelected());
		jcbYearFrom.setEnabled(!chckbxAllTime.isSelected());
		jcbYearTo.setEnabled(!chckbxAllTime.isSelected());
	}

	public String getAnimeFrom() {
		if ((jcbSeasonFrom != null) && (jcbYearFrom != null)) {
			String season = (String) jcbSeasonFrom.getSelectedItem();
			String year = (String) jcbYearFrom.getSelectedItem();
			return season + " " + year;
		}
		return null;
	}

	public String getAnimeTo() {
		if ((jcbSeasonTo != null) && (jcbYearTo != null)) {
			String season = (String) jcbSeasonTo.getSelectedItem();
			String year = (String) jcbYearTo.getSelectedItem();
			return season + " " + year;
		}
		return null;
	}

	public boolean isAllTimeSelected() {
		return chckbxAllTime.isSelected();
	}

	public void setBtnOKActionListener(ActionListener listener) {
		btnOk.addActionListener(listener);
	}

	public ArrayList<String> getMustHaveGenreAND() {
		ArrayList<String> arrayList = new ArrayList<String>();

		int i = 0;
		for (ThreeStateButton threeStateButton : genreButtons) {
			if (threeStateButton.getState() == ThreeStateButton.AND) {
				arrayList.add(GENRES[i].toLowerCase());
			}
			i++;
		}

		i = 0;
		for (ThreeStateButton threeStateButton : demographicButtons) {
			if (threeStateButton.getState() == ThreeStateButton.AND) {
				arrayList.add(DEMOGRAPHICS[i].toLowerCase());
			}
			i++;
		}

		return arrayList;
	}

	public ArrayList<String> getExcludeGenreNOT() {
		ArrayList<String> arrayList = new ArrayList<String>();

		int i = 0;
		for (ThreeStateButton threeStateButton : genreButtons) {
			if (threeStateButton.getState() == ThreeStateButton.NOT) {
				arrayList.add(GENRES[i].toLowerCase());
			}
			i++;
		}

		i = 0;
		for (ThreeStateButton threeStateButton : demographicButtons) {
			if (threeStateButton.getState() == ThreeStateButton.NOT) {
				arrayList.add(DEMOGRAPHICS[i].toLowerCase());
			}
			i++;
		}

		return arrayList;
	}
}
