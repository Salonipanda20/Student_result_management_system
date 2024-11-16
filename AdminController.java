package com.resultmanagement.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.resultmanagement.database.ConnectionProvider;
import com.resultmanagement.model.Result;
import com.resultmanagement.model.Student;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
public class AdminController extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if ("viewStudents".equals(action)) {
            List<Student> students = getAllStudents();
            request.setAttribute("students", students);
            RequestDispatcher dispatcher = request.getRequestDispatcher("viewStudents.jsp");
            dispatcher.forward(request, response);
        } else if ("viewResults".equals(action)) {
            List<Result> results = getAllResults();
            request.setAttribute("results", results);
            RequestDispatcher dispatcher = request.getRequestDispatcher("viewResults.jsp");
            dispatcher.forward(request, response);
        } else if ("deleteStudent".equals(action)) {
            String rollNo = request.getParameter("rollNo");
            boolean isDeleted = deleteStudent(rollNo);
            request.setAttribute("deletionSuccessful", isDeleted);
            RequestDispatcher dispatcher = request.getRequestDispatcher("processUpdateResult.jsp");
            dispatcher.forward(request, response);
        } else if ("deleteResult".equals(action)) {
            String rollNo = request.getParameter("rollNo");
            boolean isDeleted = deleteResult(rollNo);
            request.setAttribute("deletionSuccessful", isDeleted);
            RequestDispatcher dispatcher = request.getRequestDispatcher("processUpdateResult.jsp");
            dispatcher.forward(request, response);
        }
    }

    private List<Student> getAllStudents() {
        List<Student> students = new ArrayList<>();
        try (Connection con = ConnectionProvider.getCon()) {
            PreparedStatement ps = con.prepareStatement("SELECT * FROM student");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Student student = new Student();
                student.setRollNo(rs.getString("rollNo"));
                student.setName(rs.getString("name"));
                student.setFatherName(rs.getString("fatherName"));
                student.setCourse(rs.getString("course"));
                student.setBranch(rs.getString("branch"));
                student.setGender(rs.getString("gender"));
                students.add(student);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return students;
    }

    private List<Result> getAllResults() {
        List<Result> results = new ArrayList<>();
        try (Connection con = ConnectionProvider.getCon()) {
            PreparedStatement ps = con.prepareStatement("SELECT * FROM result");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Result result = new Result();
                result.setRollNo(rs.getString("rollNo"));
                result.setEnggPhysics(rs.getString("enggPhysics"));
                result.setAdvancedWebProgramming(rs.getString("advancedWebProgramming"));
                result.setOperatingSystem(rs.getString("operatingSystem"));
                result.setAdvancedJava(rs.getString("advancedJava"));
                result.setSpringBoot(rs.getString("springBoot"));
                result.setAngular(rs.getString("angular"));
                result.setDataVisualization(rs.getString("dataVisualization"));
                results.add(result);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return results;
    }

    // New method to delete a student
    private boolean deleteStudent(String rollNo) {
        String sql = "DELETE FROM student WHERE rollNo = ?";
        try (Connection con = ConnectionProvider.getCon();
             PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setString(1, rollNo);
            int affectedRows = ps.executeUpdate();
            return affectedRows > 0; // Return true if a row was deleted
        } catch (Exception e) {
            e.printStackTrace();
            return false; // Return false if there was an error
        }
    }

    // New method to delete a result
    private boolean deleteResult(String rollNo) {
        String sql = "DELETE FROM result WHERE rollNo = ?";
        try (Connection con = ConnectionProvider.getCon();
             PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setString(1, rollNo);
            int affectedRows = ps.executeUpdate();
            return affectedRows > 0; // Return true if a row was deleted
        } catch (Exception e) {
            e.printStackTrace();
            return false; // Return false if there was an error
        }
    }
}
