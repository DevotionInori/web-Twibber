package com.devotion;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;
import java.util.Calendar;

@WebServlet(name = "DeleteServlet")
public class DeleteServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try{
            TwibberDao td = new TwibberDao();
            td.executeDelForList(Integer.parseInt(request.getParameter("id")));

            request.getRequestDispatcher("/temp.jsp").forward(request,
                    response);

        }
        catch (Exception ex)
        {
            ex.printStackTrace();

        }
    }
}
