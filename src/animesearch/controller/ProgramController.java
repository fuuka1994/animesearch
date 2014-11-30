package animesearch.controller;

import animesearch.exception.DatabaseLoginFailedException;
import animesearch.model.AnimeInfo;
import animesearch.model.DatabaseManager;
import animesearch.model.SearchFilter;
import animesearch.view.AnimeFilter;
import animesearch.view.BookmarkView;
import animesearch.view.DatabaseLoginDialog;
import animesearch.view.MainView;
import animesearch.view.TwoStateButton;

import javax.swing.*;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.MouseListener;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.ArrayList;

public class ProgramController {
	private DatabaseManager modelManager;
	private MainView mainView;
	private static AnimeFilter animeFilterView = null;
	private ArrayList<AnimeInfo> arrayResultSearch;
	private static BookmarkView bookmarkView = null;

	private static DatabaseLoginDialog loginDialog = null;
	private static int numberOfLogin = 0;

	public ProgramController() {
		// Instantiate properties

		if (animeFilterView == null) {
			animeFilterView = new AnimeFilter();
			animeFilterView.setVisible(false);
		}

		// if (bookmarkView == null) {
		// bookmarkView = new BookmarkView();
		// bookmarkView.setVisible(false);
		// }

		mainView = new MainView();
		modelManager = DatabaseManager.getInstance();

		// Instantiate mainView before this code block, because we will need
		// it in the askUserForAuthentication() method
		try {
			FileInputStream fileStream = new FileInputStream("LoginInfo.ser");
			ObjectInputStream os = new ObjectInputStream(fileStream);
			String username = (String) os.readObject();
			String password = (String) os.readObject();
			if (password.equals(""))
				password = null;
			modelManager.connect(username, password);
			os.close();
		} catch (Exception e) {
			e.printStackTrace();
			askUserForAuthentication();
		}

		modelManager.getSearchFilter();
		mainView.setVisible(true);

		// Implementation
		addTextFieldListener();
		addFilterButtonListener();
		showInfo();
	}

	private void askUserForAuthentication() {
		numberOfLogin++;

		if (loginDialog == null) {
			loginDialog = new DatabaseLoginDialog(mainView);
			loginDialog.setConnectButtonListener(new ActionListener() {
				@Override
				public void actionPerformed(ActionEvent e) {
					String username = loginDialog.getUsername();
					String password = loginDialog.getPassword();

					try {
						modelManager.connect(username, password);
						FileOutputStream fileStream = new FileOutputStream("LoginInfo.ser");
						ObjectOutputStream os = new ObjectOutputStream(fileStream);
						os.writeObject(username);
						os.writeObject(password);
						os.close();
						loginDialog.dispose();
					} catch (DatabaseLoginFailedException e1) {
						// Allow retry up to 3 times
						if (getNumberOfLogin() > 3)
							loginDialog.dispose();
						else
							askUserForAuthentication();
					} catch (Exception e2) {
						e2.printStackTrace();
					}
				}
			});
			loginDialog.setVisible(true);
		} else {
			loginDialog.setMessage("Please retry!");
			loginDialog.clearInput();
		}
	}

	private int getNumberOfLogin() {
		return numberOfLogin;
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

				animeFilterView.setBtnOKActionListener(new ActionListener() {
					
					@Override
					public void actionPerformed(ActionEvent e) {
						// TODO Auto-generated method stub
						
						if(animeFilterView.isAllTimeSelected() == true){
							ArrayList<String> mustHaveGenre = animeFilterView.getMustHaveGenreAND();
							ArrayList<String> excludedGenre = animeFilterView.getExcludeGenreNOT();
							
							SearchFilter searchFilter = modelManager.getSearchFilter();
							searchFilter.mustHave(mustHaveGenre);
							searchFilter.exclude(excludedGenre);
							searchFilter.clearTimeFilter();
						}else{
							String seasonFrom = animeFilterView.getAnimeFrom();
							String seasonTo = animeFilterView.getAnimeTo();
							
							ArrayList<String> mustHaveGenre = animeFilterView.getMustHaveGenreAND();
							ArrayList<String> excludedGenre = animeFilterView.getExcludeGenreNOT();
							
							SearchFilter searchFilter = modelManager.getSearchFilter();
							searchFilter.mustHave(mustHaveGenre);
							searchFilter.exclude(excludedGenre);
							searchFilter.startAt(seasonFrom);
							searchFilter.endAt(seasonTo);
						}
						animeFilterView.setVisible(false);
					}
				});
				
				animeFilterView.setVisible(true);
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
					if (mainView.getStateOfToggleButton() == TwoStateButton.ANIME_MODE) {
						String text = mainView.getTextInSearchTextField();
						arrayResultSearch = modelManager.searchAnimeByName(text);
						mainView.setListOfResult(arrayResultSearch);
					} else {
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

		ProgramController programController = new ProgramController();
	}

	// Hieu's part starts from here
}