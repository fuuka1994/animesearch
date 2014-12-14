package animesearch.controller;

import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
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
	}

	public void refreshView() {
		animeInfoList = DatabaseManager.getInstance().getBookmarkedAnime();
		bookmarkView.setListOfResult(animeInfoList);
	}

	public void setVisibleOfView(boolean isVisible) {
		bookmarkView.setVisible(isVisible);
	}
}
