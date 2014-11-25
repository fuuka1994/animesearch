package animesearch.controller;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.MouseListener;
import java.util.ArrayList;

import javax.swing.JOptionPane;
import javax.swing.UIManager;
import javax.swing.UnsupportedLookAndFeelException;

import com.sun.org.apache.bcel.internal.generic.ANEWARRAY;

import animesearch.exception.DatabaseLoginFailedException;
import animesearch.model.AnimeInfo;
import animesearch.model.DatabaseManager;
import animesearch.model.SearchFilter;
import animesearch.view.AnimeFilter;
import animesearch.view.MainView;
import animesearch.view.TwoStateButton;

public class ProgramController {
	private DatabaseManager modelManager;
	private MainView mainView;
	private static AnimeFilter animeFilterView = null;
	private ArrayList<AnimeInfo> arrayResultSearch;

	public ProgramController() throws DatabaseLoginFailedException {
		// Instantiate properties
		modelManager = new DatabaseManager();
		modelManager.connect("postgres", "123456789"); // Change this depend on
														// servers
		modelManager.getSearchFilter();

		if (animeFilterView == null) {
			animeFilterView = new AnimeFilter();
			animeFilterView.setVisible(false);
		}

		mainView = new MainView();
		mainView.setVisible(true);

		// Implementation
		addTextFieldListener();
		addFilterButtonListener();
		showInfo();
	}

	private void showInfo() {
		// TODO Auto-generated method stub
		mainView.setResultListListener(new MouseListener() {

			@Override
			public void mouseReleased(java.awt.event.MouseEvent e) {
				// TODO Auto-generated method stub

			}

			@Override
			public void mousePressed(java.awt.event.MouseEvent e) {
				// TODO Auto-generated method stub

			}

			@Override
			public void mouseExited(java.awt.event.MouseEvent e) {
				// TODO Auto-generated method stub

			}

			@Override
			public void mouseEntered(java.awt.event.MouseEvent e) {
				// TODO Auto-generated method stub

			}

			@Override
			public void mouseClicked(java.awt.event.MouseEvent e) {
				// TODO Auto-generated method stub
				// Action goes here
				AnimeInfo animeInfo = arrayResultSearch.get(mainView.getSelectedAnimeIndex());
				mainView.setInformation(animeInfo);
				animeInfo.setCharacters(modelManager.getAnimeCharacters(animeInfo.getId()));
				mainView.setListOfCharacter(animeInfo);
			}
		});

	}

	private void addFilterButtonListener() {
		// TODO Auto-generated method stub
		mainView.addFilterButtonActionListerner(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent e) {
				// TODO Auto-generated method stub

			}
		});
	}

	private void addTextFieldListener() {
		mainView.addSearchTextFieldListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent e) {
				// TODO Auto-generated method stub
				if (mainView.getTextInSearchTextField().length() < 3) {
					JOptionPane.showMessageDialog(mainView, "In order to provide the best precise result, input search string must contain 3 or more characters");
				} else {
					if(mainView.getStateOfToggleButton() == TwoStateButton.ANIME_MODE ){
						String text = mainView.getTextInSearchTextField();
						arrayResultSearch = modelManager.searchAnimeByName(text);
						mainView.setListOfResult(arrayResultSearch);
					}else{
						String text = mainView.getTextInSearchTextField();
						arrayResultSearch = modelManager.searchAnimeByCharacter(text);
						mainView.setListOfResult(arrayResultSearch);
					}
				}
			}
		});
	}

	public static void main(String[] args) {
		try {
			UIManager.setLookAndFeel(UIManager.getCrossPlatformLookAndFeelClassName());
		} catch (ClassNotFoundException | InstantiationException
				| IllegalAccessException | UnsupportedLookAndFeelException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		try {
			ProgramController programController = new ProgramController();
		} catch (DatabaseLoginFailedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
