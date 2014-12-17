package animesearch.controller;

import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.awt.event.WindowEvent;
import java.awt.event.WindowListener;
import java.awt.event.WindowStateListener;
import java.util.ArrayList;

import animesearch.model.AnimeInfo;
import animesearch.model.DatabaseManager;
import animesearch.view.BookmarkView;

public class BookmarkController {
	private BookmarkView bookmarkView;
	private ArrayList<AnimeInfo> animeInfoList;

	public ProgramController delegate;

	public BookmarkController() {
		super();
		if (bookmarkView == null) {
			bookmarkView = new BookmarkView();
		}

		animeInfoList = DatabaseManager.getInstance().getBookmarkedAnime();
		bookmarkView.setListOfResult(animeInfoList);

		bookmarkView.setbookmarkListListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent e) {
				// TODO Auto-generated method stub
				AnimeInfo animeInfo = animeInfoList.get(bookmarkView.getSelectedAnimeIndex());
				animeInfo.setCharacters(DatabaseManager.getInstance().getAnimeCharacters(animeInfo.getId()));
				delegate.showItemToInfoView(animeInfo);
			}
		});

		bookmarkView.addBookmarkViewWindowListener(new WindowListener() {
			
			@Override
			public void windowOpened(WindowEvent e) {
				// TODO Auto-generated method stub
				
			}
			
			@Override
			public void windowIconified(WindowEvent e) {
				// TODO Auto-generated method stub
				
			}
			
			@Override
			public void windowDeiconified(WindowEvent e) {
				// TODO Auto-generated method stub
				
			}
			
			@Override
			public void windowDeactivated(WindowEvent e) {
				// TODO Auto-generated method stub
				
			}
			
			@Override
			public void windowClosing(WindowEvent e) {
				// TODO Auto-generated method stub
				
			}
			
			@Override
			public void windowClosed(WindowEvent e) {
				// TODO Auto-generated method stub
				
			}
			
			@Override
			public void windowActivated(WindowEvent e) {
				// TODO Auto-generated method stub
				refreshView();
			}
		});
	}

	public void refreshView() {
		animeInfoList = DatabaseManager.getInstance().getBookmarkedAnime();
		bookmarkView.setListOfResult(animeInfoList);
	}

	public void setVisibleOfView(boolean isVisible) {
		bookmarkView.setVisible(isVisible);
	}
}
