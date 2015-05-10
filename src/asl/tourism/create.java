package tourism;

import jason.asSemantics.DefaultInternalAction;
import jason.asSemantics.TransitionSystem;
import jason.asSemantics.Unifier;
import jason.asSyntax.Literal;
import jason.asSyntax.StringTerm;
import jason.asSyntax.Term;

import java.awt.Color;
import java.awt.Dimension;
import java.awt.Toolkit;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.Random;

import javax.swing.BorderFactory;
import javax.swing.ButtonGroup;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JRadioButton;
import javax.swing.JTextField;


/** internal action that creates a simple GUI with two buttons that trigger AS plans */
@SuppressWarnings("serial")
public class create extends DefaultInternalAction {

    int runCount = 0;
    
    int JFrameWidth = 600;
    int JFrameHeight = 400;
    
    Toolkit tk = Toolkit.getDefaultToolkit();
    Dimension tam = tk.getScreenSize();
    int tamWidth = (int)((tam.getWidth() - JFrameWidth)/2.0);
    int tamHeight = (int)((tam.getHeight() - JFrameHeight)/2.0);
    
    Random random = new Random();
    int rd = random.nextInt();
    String rnd = Integer.toString(rd);
    
    @Override
    public Object execute(final TransitionSystem ts, Unifier un, Term[] args) throws Exception {
        
        // get the window title
        String title = ((StringTerm)args[0]).getString();
        
        // create the windows
        final JButton run = new JButton("run");
        final JButton stop = new JButton("stop");
        stop.setEnabled(false);
        JPanel panel = new JPanel();
		panel.setLayout(null);
		JLabel i = new JLabel("Ingresos: ");
		i.setBounds(10,15,100,20);
        panel.add(i);
        JTextField ingresos = new JTextField(rnd,10);
		ingresos.setBounds(110,15,100,20);
        i.setLabelFor(ingresos);
        panel.add(ingresos);
		JLabel g = new JLabel("Gastos: ");
		g.setBounds(250,15,100,20);
        panel.add(g);
        JTextField gastos = new JTextField(rnd,10);
		gastos.setBounds(350,15,100,20);
        g.setLabelFor(gastos);
		panel.add(gastos);
		JLabel r = new JLabel("Rutas: ");
		r.setBounds(10,45,100,20);
        panel.add(r);
        JPanel rutas = new JPanel();
		rutas.setBounds(110,55,400,200);
		//rutas.setPreferredSize(new Dimension(200,100));
		rutas.setBorder(BorderFactory.createLineBorder(Color.black));
        r.setLabelFor(rutas);
		panel.add(rutas);
		ButtonGroup bg = new ButtonGroup();
		JRadioButton b1 = new JRadioButton("AA");
		bg.add(b1);
		rutas.add(b1);
		JRadioButton b2 = new JRadioButton("BB");
		bg.add(b2);
		rutas.add(b2);
		JRadioButton b3 = new JRadioButton("BB");
		bg.add(b3);
		rutas.add(b3);
		
		JLabel ag = new JLabel("Agentes contactados: ");
		ag.setBounds(10,300,200,20);
        panel.add(ag);
        JTextField agentes = new JTextField(rnd,10);
		agentes.setBounds(210,300,100,20);
        i.setLabelFor(agentes);
        panel.add(agentes);
		
		
        

		
		run.setBounds(340,300,100,20);
		stop.setBounds(450,300,100,20);

        panel.add(run);
        panel.add(stop);
        JFrame frame = new JFrame(title);
        frame.getContentPane().add(panel);
        frame.setSize(new Dimension(JFrameWidth, JFrameHeight));
        frame.setLocation(tamWidth,tamHeight);
        frame.setResizable(false);
        frame.setVisible(true);
        
    
        
        // add the event listeners
        run.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                // creates a new event +!run so that the agent can react to the button
                runCount++;
                ts.getC().addAchvGoal(Literal.parseLiteral("run("+runCount+")"), null);
                stop.setEnabled(true);
                run.setEnabled(false);
            }
        });
        stop.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                ts.getC().addAchvGoal(Literal.parseLiteral("stop("+runCount+")"), null);
                stop.setEnabled(false);
                run.setEnabled(true);
            }
        });
        
        return true;
    }
}

