package animesearch.controller;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.ArrayList;

import javax.swing.JOptionPane;
import javax.swing.UIManager;
import javax.swing.UnsupportedLookAndFeelException;

import animesearch.exception.DatabaseLoginFailedException;
import animesearch.model.AnimeInfo;
import animesearch.model.DatabaseManager;
import animesearch.model.SearchFilter;
import animesearch.view.AnimeFilter;
import animesearch.view.MainView;

public class ProgramController {
	private DatabaseManager modelManager;
	private MainView mainView;
	private static AnimeFilter animeFilterView = null;

	public ProgramController() throws DatabaseLoginFailedException {
		// Instantiate properties
		modelManager = new DatabaseManager();
		modelManager.connect("minhnh", null); // Change this depend on servers
		modelManager.getSearchFilter();

		if (animeFilterView == null) {
			animeFilterView = new AnimeFilter();
			animeFilterView.setVisible(false);
		}

		mainView = new MainView();
		mainView.setVisible(true);

		// Implementation
		addListenerForAllElementsInView();
	}

	private void addListenerForAllElementsInView() {
		addTextFieldListener();
		addFilterButtonListener();
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
					String inputText = mainView.getTextInSearchTextField();
					ArrayList<AnimeInfo> resultList = modelManager.searchAnimeByCharacter(inputText);
					mainView.setListOfResult(resultList);
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
