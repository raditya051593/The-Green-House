// The Green House - Scala

import javax.swing.JFrame
import java.awt.Graphics

// The main class for 'The Green House'
class TheGreenHouse() extends JFrame {
  // Set the window size
  setBounds(400,100,500,500);
  
  // Create the content pane
  val contentPane = new JPanel()
  contentPane.setLayout(null)
  
  // Add the content pane to the window
  setContentPane(contentPane)
  
  // Create the background image
  val backgroundImage = new ImageIcon("backgroundImage.png")
  
  // Add the background image to the content pane
  val background = new JLabel()
  background.setIcon(backgroundImage)
  contentPane.add(background)
  
  // Create the buttons
  val btn1 = new JButton("Button 1")
  btn1.setBounds(200,50,50,25)
  contentPane.add(btn1)
  
  val btn2 = new JButton("Button 2")
  btn2.setBounds(200,80,50,25)
  contentPane.add(btn2)
  
  // Create the text boxes
  val txt1 = new JTextField("Text Field 1")
  txt1.setBounds(200,110,50,25)
  contentPane.add(txt1)
  
  val txt2 = new JTextField("Text Field 2")
  txt2.setBounds(200,140,50,25)
  contentPane.add(txt2)
  
  // Create the labels
  val lbl1 = new JLabel("Label 1")
  lbl1.setBounds(200,170,50,25)
  contentPane.add(lbl1)
  
  val lbl2 = new JLabel("Label 2")
  lbl2.setBounds(200,200,50,25)
  contentPane.add(lbl2)
  
  // Create the text area
  val tArea1 = new JTextArea("Text Area 1")
  tArea1.setBounds(200,230,50,25)
  contentPane.add(tArea1)
  
  // Create the radio buttons
  val rbtn1 = new JRadioButton("Radio Button 1")
  rbtn1.setBounds(200,260,50,25)
  contentPane.add(rbtn1)
  
  val rbtn2 = new JRadioButton("Radio Button 2")
  rbtn2.setBounds(200,290,50,25)
  contentPane.add(rbtn2)
  
  // Create the check boxes
  val cb1 = new JCheckBox("Check Box 1")
  cb1.setBounds(200,320,50,25)
  contentPane.add(cb1)
  
  val cb2 = new JCheckBox("Check Box 2")
  cb2.setBounds(200,350,50,25)
  contentPane.add(cb2)
  
  // Create the list box
  val listBox1 = new JList[String]()
  listBox1.setListData(Array("List Box 1", "List Box 2"))
  listBox1.setBounds(200,380,50,25)
  contentPane.add(listBox1)
  
  // Display the window
  setVisible(true)
  
  // Paint the window
  override def paint(g : Graphics) : Unit = {
    super.paint(g)
    
    g.drawLine(50,50,250,50)
    g.drawLine(50,50,50,250)
    g.drawLine(250,50,250,250)
    g.drawLine(50,250,250,250)
  }
}

object TheGreenHouse {
  def main(args: Array[String]): Unit = {
    // Create an instance of 'The Green House'
    val greenHouse = new TheGreenHouse()
  }
}