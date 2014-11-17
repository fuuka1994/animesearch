package animesearch.view;

import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.JLabel;
import javax.swing.JCheckBox;
import javax.swing.JComboBox;
import javax.swing.border.TitledBorder;
import javax.swing.UIManager;
import java.awt.Color;

public class AnimeFilter extends JFrame {

	private JPanel contentPane;

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
		setTitle("Filter");
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
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
		
		JComboBox jcbSeasonFrom = new JComboBox();
		jcbSeasonFrom.setBounds(62, 16, 100, 20);
		jpnSeason.add(jcbSeasonFrom);
		jcbSeasonFrom.setEditable(true);
		
		JComboBox jcbSeasonTo = new JComboBox();
		jcbSeasonTo.setBounds(62, 56, 100, 20);
		jpnSeason.add(jcbSeasonTo);
		jcbSeasonTo.setEditable(true);
		
		JComboBox jcbYearFrom = new JComboBox();
		jcbYearFrom.setBounds(202, 16, 60, 20);
		jpnSeason.add(jcbYearFrom);
		jcbYearFrom.setEditable(true);
		
		JComboBox jcbYearTo = new JComboBox();
		jcbYearTo.setBounds(202, 56, 60, 20);
		jpnSeason.add(jcbYearTo);
		jcbYearTo.setEditable(true);
		
		JPanel jpnGenre = new JPanel();
		jpnGenre.setBorder(new TitledBorder(UIManager.getBorder("TitledBorder.border"), "Genre", TitledBorder.LEADING, TitledBorder.TOP, null, Color.GRAY));
		jpnGenre.setBounds(8, 35, 349, 178);
		contentPane.add(jpnGenre);
		jpnGenre.setLayout(null);
		
		JCheckBox chckbxAction = new JCheckBox("Action");
		chckbxAction.setBounds(6, 16, 97, 23);
		jpnGenre.add(chckbxAction);
		
		JCheckBox chckbxAdventure = new JCheckBox("Adventure");
		chckbxAdventure.setBounds(6, 42, 97, 23);
		jpnGenre.add(chckbxAdventure);
		
		JCheckBox chckbxComedy = new JCheckBox("Comedy");
		chckbxComedy.setBounds(6, 68, 97, 23);
		jpnGenre.add(chckbxComedy);
		
		JCheckBox chckbxDrama = new JCheckBox("Drama");
		chckbxDrama.setBounds(6, 94, 97, 23);
		jpnGenre.add(chckbxDrama);
		
		JCheckBox chckbxEcchi = new JCheckBox("Ecchi");
		chckbxEcchi.setBounds(6, 120, 97, 23);
		jpnGenre.add(chckbxEcchi);
		
		JCheckBox chckbxFantasy = new JCheckBox("Fantasy");
		chckbxFantasy.setBounds(6, 148, 97, 23);
		jpnGenre.add(chckbxFantasy);
		
		JCheckBox chckbxHarem = new JCheckBox("Harem");
		chckbxHarem.setBounds(126, 16, 97, 23);
		jpnGenre.add(chckbxHarem);
		
		JCheckBox chckbxHorror = new JCheckBox("Horror");
		chckbxHorror.setBounds(126, 42, 97, 23);
		jpnGenre.add(chckbxHorror);
		
		JCheckBox chckbxMartialArts = new JCheckBox("Martial Arts");
		chckbxMartialArts.setBounds(126, 120, 97, 23);
		jpnGenre.add(chckbxMartialArts);
		
		JCheckBox chckbxMecha = new JCheckBox("Mecha");
		chckbxMecha.setBounds(126, 148, 97, 23);
		jpnGenre.add(chckbxMecha);
		
		JCheckBox chckbxMusic = new JCheckBox("Music");
		chckbxMusic.setBounds(246, 16, 97, 23);
		jpnGenre.add(chckbxMusic);
		
		JCheckBox chckbxMystery = new JCheckBox("Mystery");
		chckbxMystery.setBounds(246, 42, 97, 23);
		jpnGenre.add(chckbxMystery);
		
		JCheckBox chckbxMagicalGirl = new JCheckBox("Magical Girl");
		chckbxMagicalGirl.setBounds(126, 94, 97, 23);
		jpnGenre.add(chckbxMagicalGirl);
		
		JCheckBox chckbxRomance = new JCheckBox("Romance");
		chckbxRomance.setBounds(246, 68, 97, 23);
		jpnGenre.add(chckbxRomance);
		
		JCheckBox chckbxSliceOfLife = new JCheckBox("Slice of Life");
		chckbxSliceOfLife.setBounds(246, 94, 97, 23);
		jpnGenre.add(chckbxSliceOfLife);
		
		JCheckBox chckbxSports = new JCheckBox("Sports");
		chckbxSports.setBounds(246, 120, 97, 23);
		jpnGenre.add(chckbxSports);
		
		JCheckBox chckbxTragedy = new JCheckBox("Tragedy");
		chckbxTragedy.setBounds(246, 148, 97, 23);
		jpnGenre.add(chckbxTragedy);
		
		JCheckBox chckbxHistorical = new JCheckBox("Historical");
		chckbxHistorical.setBounds(126, 68, 97, 23);
		jpnGenre.add(chckbxHistorical);
		
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
	}
}
