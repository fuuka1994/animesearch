package animesearch.controller;

import java.util.ArrayList;

import animesearch.model.AnimeInfo;
import animesearch.model.DatabaseManager;
import animesearch.view.BookmarkView;

public class BookmarkController {
	private BookmarkView bookmarkView;

	public BookmarkController() {
		super();
		if (bookmarkView == null) {
			bookmarkView = new BookmarkView();
		}

		ArrayList<AnimeInfo> animeInfoList = DatabaseManager.getInstance().getBookmarkedAnime();
		bookmarkView.setListOfResult(animeInfoList);

		bookmarkView.setVisible(true);
	}
}
