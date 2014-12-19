package animesearch.view;

import animesearch.model.AnimeInfo;

public interface BookmarkViewDelegate {
	public void showItemToInfoView(AnimeInfo animeInfo);

	public void showQueryToDemoView();
}
