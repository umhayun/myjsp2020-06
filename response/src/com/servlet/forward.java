package com.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




@WebServlet("/forward")
public class forward extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public forward() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id=request.getParameter("id");
		System.out.println(id);
		//request�� 1ȸ������ ����ϱ� ���ؼ� ���� ���� ����
		//request.setAttribute("������", ��)
		request.setAttribute("name", "ȫ�浿");
		//response.sendRedirect("actionTag/forward_ex04.jsp");
		RequestDispatcher dp=request.getRequestDispatcher("actionTag/forward_ex04.jsp");
		dp.forward(request, response);
	}

}
