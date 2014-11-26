package animesearch.view;

import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionListener;

/**
 * Pop-up dialog asks user for database username and password
 */
public class DatabaseLoginDialog extends JDialog
{
    private JTextField usernameTextField;
    private JTextField passwordTextField;
    private JLabel messageLabel;

    private JButton connectButton;

    public DatabaseLoginDialog(JFrame parent)
    {
        super(parent, "Database authentication", true);
        //setTitle("Database authentication");

        JLabel usernameLabel = new JLabel("Username: ");
        JLabel passwordLabel = new JLabel("Password: ");
        JPanel labelPanel = new JPanel(new GridLayout(2, 1));
        labelPanel.add(usernameLabel);
        labelPanel.add(passwordLabel);

        usernameTextField = new JTextField("");
        usernameTextField.setColumns(15);
        passwordTextField = new JTextField("");
        passwordTextField.setColumns(15);
        JPanel textFieldPanel = new JPanel(new GridLayout(2, 1));
        textFieldPanel.add(usernameTextField);
        textFieldPanel.add(passwordTextField);

        JPanel connectionPanel = new JPanel();
        connectionPanel.setLayout(new BoxLayout(connectionPanel, BoxLayout.X_AXIS));
        connectionPanel.add(labelPanel);
        connectionPanel.add(textFieldPanel);

        connectButton = new JButton("Connect");
        JPanel buttonPanel = new JPanel();
        buttonPanel.add(connectButton, BorderLayout.CENTER);

        messageLabel = new JLabel("PostgreSQL username and password");
        JPanel messagePanel = new JPanel();
        messagePanel.add(messageLabel);

        getContentPane().add(messagePanel, BorderLayout.NORTH);
        getContentPane().add(connectionPanel, BorderLayout.CENTER);
        getContentPane().add(buttonPanel, BorderLayout.PAGE_END);

        pack();
        setResizable(false);
        setLocationRelativeTo(parent);
    }

    public void setConnectButtonListener(ActionListener listener)
    {
        connectButton.addActionListener(listener);
    }

    public String getUsername()
    {
        return usernameTextField.getText().trim();
    }

    public String getPassword()
    {
        return passwordTextField.getText();
    }

    public void setMessage(String message)
    {
        messageLabel.setText(message);
    }

    public void clearInput()
    {
        usernameTextField.setText("");
        passwordTextField.setText("");
    }
}
