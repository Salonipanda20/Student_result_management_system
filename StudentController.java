package com.resultmanagement.controller;

import java.io.IOException;

import com.resultmanagement.model.Student;
import com.resultmanagement.model.StudentDao;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
@WebServlet("/addStudent")
public class StudentController extends HttpServlet {
    private StudentDao studentDao = new StudentDao();

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String course = request.getParameter("course");
        String branch = request.getParameter("branch");
        String rollNo = request.getParameter("rollNo");
        String name = request.getParameter("name");
        String fatherName = request.getParameter("fatherName");
        String gender = request.getParameter("gender");

        Student student = new Student(course, branch, rollNo, name, fatherName, gender);
        boolean isSuccess = studentDao.addStudent(student);

        if (isSuccess) {
            response.sendRedirect("adminhome.jsp");
        } else {
            response.sendRedirect("error.jsp");
        }
    }
}
