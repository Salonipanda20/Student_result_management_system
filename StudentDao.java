package com.resultmanagement.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.resultmanagement.database.ConnectionProvider;

public class StudentDao {
    public boolean addStudent(Student student) {
        boolean isSuccess = false;
        try (Connection con = ConnectionProvider.getCon();
             PreparedStatement pst = con.prepareStatement("INSERT INTO student (rollNo, name, fatherName, course, branch, gender) VALUES (?, ?, ?, ?, ?, ?)")) {
            pst.setString(1, student.getRollNo());
            pst.setString(2, student.getName());
            pst.setString(3, student.getFatherName());
            pst.setString(4, student.getCourse());
            pst.setString(5, student.getBranch());
            pst.setString(6, student.getGender());
            int rowsAffected = pst.executeUpdate();
            isSuccess = (rowsAffected > 0);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return isSuccess;
    }

    public List<Student> getAllStudents() {
        List<Student> students = new ArrayList<>();
        try (Connection con = ConnectionProvider.getCon();
             PreparedStatement pst = con.prepareStatement("SELECT * FROM student");
             ResultSet rs = pst.executeQuery()) {
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
}
