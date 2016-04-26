package app;

import javax.swing.JComponent;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.KeyStroke;

import java.awt.Dimension;
import java.awt.Toolkit;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.KeyEvent;
import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;

public class AppMain {
	public static void main(String[] args) {
		// Frame
		JFrame frame = new JFrame("Koewatchi");

		// Label
		JLabel health = new JLabel("HP", JLabel.CENTER);

		// Toolkit
		Toolkit theKit = frame.getToolkit();
		Dimension wndSize = theKit.getScreenSize();

		// frame setting
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		int windowWidth = 640;
		int windowHeight = 480;
		frame.setBounds(wndSize.width / 4, wndSize.height / 4, windowWidth,
				windowHeight);
		
		// Listener
		ActionListener actionListener = new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent e) {
				// TODO Auto-generated method stub
				System.out.print("Sax");
				frame.add(health);
			}
		};

		// JPanel
		JPanel content = (JPanel) frame.getContentPane();
		KeyStroke stoke = KeyStroke.getKeyStroke(KeyEvent.VK_ESCAPE, 0);
		content.registerKeyboardAction(actionListener, stoke,
				JComponent.WHEN_IN_FOCUSED_WINDOW);

		while (true) {
			

			frame.setVisible(true);

		}

	}
}
