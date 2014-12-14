package animesearch.controller;

import animesearch.exception.DatabaseLoginFailedException;
import animesearch.model.AnimeInfo;
import animesearch.model.DatabaseManager;
import animesearch.model.SearchFilter;
import animesearch.view.AnimeFilter;
import animesearch.view.BookmarkViewDelegate;
import animesearch.view.DatabaseLoginDialog;
import animesearch.view.MainView;
import animesearch.view.TwoStateButton;
import animesearch.view.TwoStateButtonBookmark;

import javax.swing.*;

import java.awt.event.*;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.ArrayList;

public class ProgramController implements BookmarkViewDelegate {
	private DatabaseManager modelManager;
	private MainView mainView;
	private static AnimeFilter animeFilterView = null;
	private ArrayList<AnimeInfo> arrayResultSearch;

	private static DatabaseLoginDialog loginDialog = null;
	private static int numberOfLogin = 0;

	public ProgramController() {
		// Instantiate properties

		if (animeFilterView == null) {
			animeFilterView = new AnimeFilter();
			animeFilterView.setVisible(false);
		}

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

		// Implementation
		addTextFieldListener();
		addFilterButtonListener();
		addLoveButtonListener();
		addBookmarkButtonListener();
		showInfo();
		showRecommendedAnime();

		mainView.setVisible(true);
	}

	private void showRecommendedAnime() {
		// TODO Auto-generated method stub
		mainView.setRandomAnime(modelManager.getRandomAnime());
	}

	private void addLoveButtonListener() {
		// TODO Auto-generated method stub
		mainView.addLoveButtonActionListerner(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent e) {
				// TODO Auto-generated method stub
				if (mainView.getStateOfLoveButton() == TwoStateButtonBookmark.BOOKMARK_OFF) {
					modelManager.addBookmark(arrayResultSearch.get(mainView.getSelectedAnimeIndex()).getId(), "Test");
				} else {
					modelManager.deleteBookmark(arrayResultSearch.get(mainView.getSelectedAnimeIndex()).getId());
				}
			}
		});
	}

	private void addBookmarkButtonListener() {
		// TODO Auto-generated method stub
		BookmarkController bookmarkController = new BookmarkController();
		bookmarkController.delegate = this;
		bookmarkController.setVisibleOfView(false);

		mainView.addBookmarkButtonActionListerner(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent e) {
				// TODO Auto-generated method stub
				bookmarkController.refreshView();
				bookmarkController.setVisibleOfView(true);
			}
		});
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
		mainView.setResultListListener(new MouseAdapter() {
			@Override
			public void mouseClicked(java.awt.event.MouseEvent e) {
				// Action goes here
				final AnimeInfo animeInfo = arrayResultSearch.get(mainView.getSelectedAnimeIndex());
				mainView.setInformation(animeInfo);
				animeInfo.setCharacters(modelManager.getAnimeCharacters(animeInfo.getId()));

				mainView.setProducerLabelMouseListener(new MouseAdapter() {
					@Override
					public void mouseClicked(MouseEvent e) {
						arrayResultSearch = modelManager.searchAnimeByProducer(animeInfo.getProducer());
						mainView.setListOfResult(arrayResultSearch);
					}
				});

				mainView.setListOfCharacter(animeInfo);
				if (modelManager.checkBookmarkState(animeInfo)) {
					System.out.println(modelManager.checkBookmarkState(animeInfo));
					mainView.setStateOfLoveButton(TwoStateButtonBookmark.BOOKMARK_ON);
				} else {
					System.out.println(modelManager.checkBookmarkState(animeInfo));
					mainView.setStateOfLoveButton(TwoStateButtonBookmark.BOOKMARK_OFF);
				}
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

						if (animeFilterView.isAllTimeSelected() == true) {
							ArrayList<String> mustHaveGenre = animeFilterView.getMustHaveGenreAND();
							ArrayList<String> excludedGenre = animeFilterView.getExcludeGenreNOT();

							SearchFilter searchFilter = modelManager.getSearchFilter();
							searchFilter.mustHave(mustHaveGenre);
							searchFilter.exclude(excludedGenre);
							searchFilter.clearTimeFilter();
						} else {
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

	@Override
	public void showItemToInfoView(AnimeInfo animeInfo) {
		// TODO Auto-generated method stub
		mainView.setInformation(animeInfo);
		mainView.setListOfCharacter(animeInfo);
	}
}