package animesearch.view;

import javax.swing.JFrame;
import javax.swing.JScrollPane;
import javax.swing.JTextArea;

public class DemoView extends JFrame {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private JTextArea resultTextArea;
	private static DemoView singletonInstance;
	private static int count = 1;

	private DemoView() {
		setType(Type.POPUP);
		setResizable(false);
		setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
		setBounds(0, 0, 800, 500);

		resultTextArea = new JTextArea();
		resultTextArea.setWrapStyleWord(true);
		resultTextArea.setLineWrap(true);
		resultTextArea.setEditable(false);

		JScrollPane paneDescription = new JScrollPane(resultTextArea);
		paneDescription.setBounds(10, 10, 650, 370);
		getContentPane().add(paneDescription);
	}

	public static DemoView getInstance() {
		if (singletonInstance == null) {
			singletonInstance = new DemoView();
		}

		return singletonInstance;
	}

	public void setResultText(String text) {
		if (count == 1) {
			resultTextArea.setText("QUERY " + count + "\n" + text + "\n\n");
			count++;
		} else {
			resultTextArea.setText(resultTextArea.getText() + "QUERY " + count + "\n" + text + "\n\n");
			count++;
		}
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
