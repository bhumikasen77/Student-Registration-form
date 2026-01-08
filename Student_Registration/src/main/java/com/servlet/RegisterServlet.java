package com.servlet;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.RegisterDAO;
import com.Db.ConnectionProvider;
import com.entity.Student;
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String fname = req.getParameter("fname");
			String email = req.getParameter("email");
			String dob = req.getParameter("dob");
			String address = req.getParameter("address");
			String phone = req.getParameter("phone");
			String gender = req.getParameter("gender");
			String password = req.getParameter("password");
			
			//System.out.print(fname+" "+email+" "+dob+" "+address+" "+phone+" "+gender+" "+password);
			Student st = new Student();
			st.setName(fname);
			st.setEmail(email);
			st.setDob(dob);
			st.setAddress(address);
			st.setPhone(phone);
			st.setGender(gender);
			st.setPassword(password);
			
			RegisterDAO dao = new RegisterDAO(ConnectionProvider.getConnection());
			boolean f = dao.StudentRegister(st);
			HttpSession session = req.getSession();
			if(f) {
				session.setAttribute("succMsg", "Registered Successfully");
				resp.sendRedirect("index.jsp");
			}else {
				session.setAttribute("failedMsg", "Something went wrong");
				resp.sendRedirect("index.jsp");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
