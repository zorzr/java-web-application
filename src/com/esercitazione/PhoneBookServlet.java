package com.esercitazione;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "PhoneBookServlet", urlPatterns = "/phonebook/*")
public class PhoneBookServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getPathInfo().contains("new")) {
            String name = request.getParameter("name");
            String surname = request.getParameter("surname");
            String phone = request.getParameter("phone");

            PhoneBookEntry entry = new PhoneBookEntry(name, surname, phone);
            PhoneBookEntries.add(entry);

            request.setAttribute("entries", PhoneBookEntries.allEntries());
            forwardTo(request, response, "/views/list.jsp");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getPathInfo().contains("list")) {
            request.setAttribute("entries", PhoneBookEntries.allEntries());
            forwardTo(request, response, "/views/list.jsp");
        }

        if (request.getPathInfo().contains("new")) {
            request.setAttribute("entries", PhoneBookEntries.allEntries());
            forwardTo(request, response, "/views/new.jsp");
        }
    }

    private void forwardTo(HttpServletRequest request, HttpServletResponse response, String route) throws ServletException, IOException {
        ServletContext context = getServletContext();
        RequestDispatcher rd = context.getRequestDispatcher(route);
        rd.forward(request, response);
    }
}
