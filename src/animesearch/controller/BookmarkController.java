package animesearch.controller;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.awt.event.WindowEvent;
import java.awt.event.WindowListener;
import java.awt.event.WindowStateListener;
import java.util.ArrayList;

import javax.swing.JOptionPane;

import animesearch.model.AnimeInfo;
import animesearch.model.DatabaseManager;
import animesearch.view.BookmarkView;

public class BookmarkController {
	private DatabaseManager modelManager;
	private BookmarkView bookmarkView;
	private ArrayList<AnimeInfo> animeInfoList;

	public ProgramController delegate;

	public BookmarkController() {
		super();
		if (bookmarkView == null) {
			bookmarkView = new BookmarkView();
		}
		
		modelManager = DatabaseManager.getInstance();

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
		
		bookmarkView.addNoteButtonActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				// TODO Auto-generated method stub
				if (bookmarkView.getSelectedAnimeIndex() != -1) {
					String note = JOptionPane.showInputDialog(null, "Please enter a new Bookmark Note:", "Edit Bookmark Note", JOptionPane.OK_CANCEL_OPTION);
					modelManager.updateBookmarkNote(animeInfoList.get(bookmarkView.getSelectedAnimeIndex()).getId(), note);
					refreshView();
					delegate.showQueryToDemoView();
				}
			}
		});
		
		bookmarkView.addUnbookmarkButtonActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				// TODO Auto-generated method stub
				if (bookmarkView.getSelectedAnimeIndex() != -1) {
					modelManager.deleteBookmark(animeInfoList.get(bookmarkView.getSelectedAnimeIndex()).getId());
					refreshView();
					delegate.showQueryToDemoView();
				}
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
