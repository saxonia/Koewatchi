package app;


import javax.swing.JFrame;
import javax.swing.JLabel;

import java.awt.Dimension;
import java.awt.Toolkit;

public class AppMain {
	public static void main(String [] args){
		//Frame
		JFrame frame = new JFrame("Koewatchi");
		
		//Label
		JLabel health = new JLabel("HP",JLabel.CENTER);
		
		//Toolkit
		Toolkit theKit = frame.getToolkit();
		Dimension wndSize = theKit.getScreenSize();
		
	    //frame setting
	    frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
	    int windowWidth = 640;
	    int windowHeight = 480;
	    frame.setBounds(wndSize.width / 4, wndSize.height/4, windowWidth, windowHeight);
	    frame.add(health);
	    frame.setVisible(true);
	    
	  

	}
}
