package servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JFrame;
import javax.swing.JOptionPane;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

import dbcon.dbcon;

/**
 * Servlet implementation class receiverreglog
 */
@WebServlet("/receiverreglog")
public class receiverreglog extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public receiverreglog() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);

		String data=request.getParameter("data");
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String pass=request.getParameter("pass");
		
		
		HttpSession session=request.getSession();
		session.setAttribute("demail", email);

		System.out.println(email);
		System.out.println(pass);
		
		Connection con = null;
		
		if(data.equals("2")){
			
			
			int reg=0;
		 con=(Connection) dbcon.create();
			
			try {
				
					
					PreparedStatement ps=(PreparedStatement) con.prepareStatement("INSERT INTO fileguard.receiverreg VALUES(id,?,?,?,?)");
					ps.setString(1, name);
					ps.setString(2, email);
					ps.setString(3, pass);
					ps.setString(4, "request");
					
		
					reg=ps.executeUpdate();

		} catch (SQLException e) {
		//TODO Auto-generated catch block
		e.printStackTrace();
		}
			if(reg==1){
				response.sendRedirect("receivermain.jsp");
			}
			else{
				response.sendRedirect("error.jsp");
			}
			
		
		}
		else{
			
			
			boolean log = false;
			try {
				
				 con=(Connection) dbcon.create();
					
				java.sql.PreparedStatement ps=con.prepareStatement("SELECT * FROM `fileguard`.`receiverreg` where email=? and pass=? ");
				ps.setString(1, email);
				ps.setString(2, pass);
					
					
					java.sql.ResultSet rs=ps.executeQuery();
					log=rs.next();
		}
			catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				}
						if(log==true){
							
							int min = 200;  
							int max = 400;
							System.out.println("Random value of type int between "+min+" to "+max+ ":");  
							int b = (int)(Math.random()*(max-min+1)+min);  
							System.out.println(b); 
							
							String otp=String.valueOf(b);
							
							//mail1.main(email, otp);
							
							JFrame f;
							f = new JFrame();
							String otp1 = JOptionPane.showInputDialog(f, "Enter OTP");

							
							if(otp1.equals(otp))
							{
							
							response.sendRedirect("receivermain.jsp");
							}
							else {
								
								JFrame f1 = new JFrame();
								String message = "Sorry, YOUR OTP IS WRONG";

								JOptionPane.showMessageDialog(f1, message);
								
								response.sendRedirect("receiverreglog.jsp");
							}
							
							
						}
						else{
							response.sendRedirect("error.jsp");
						   }
			
			
			
		}
	
		
	}

}
