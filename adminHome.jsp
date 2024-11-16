<%@include file="header.html"%>
<!DOCTYPE html>
<html>
<title>CUTM</title>
<style>
        /* General Body Styling */
        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(135deg, #6e7dff, #a8c0ff); /* Soft gradient background */
            margin: 0;
            padding: 0;
            color: #333;
        }
        
        /* Header Styling */
        header {
            background-color: #2c3e50;
            padding: 20px 0;
            text-align: center;
            color: white;
        }
        
        .logo {
            width: 100px;
            height: 100px;
            margin: 10px;
        }
        
        /* Navigation Bar Styling */
        .w3-bar {
            background-color: #34495e;
            overflow: hidden;
            padding: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        .w3-bar-item {
            color: white;
            padding: 10px 15px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            transition: background-color 0.3s;
        }

        .w3-bar-item:hover {
            background-color: #1abc9c;
        }
        
        /* Container for all content */
        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 30px;
        }

        /* Form Container Styling */
        .form-container {
            background-color: #ffffff;
            padding: 25px;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            margin-top: 20px;
            transition: transform 0.3s ease-in-out;
        }

        .form-container:hover {
            transform: scale(1.03); /* Add a hover effect on the form */
        }

        .form-container h3 {
            color: #2c3e50;
            margin-bottom: 20px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-container label {
            font-size: 16px;
            font-weight: bold;
            color: #34495e;
        }

        .form-container input {
            width: 100%;
            padding: 12px;
            margin-top: 8px;
            border: 1px solid #ccc;
            border-radius: 8px;
            font-size: 14px;
            box-sizing: border-box;
            transition: border-color 0.3s;
        }

        .form-container input:focus {
            border-color: #3498db; /* Blue border on focus */
            outline: none;
        }

        .form-container button {
            background-color: #3498db;
            color: white;
            border: none;
            padding: 12px 20px;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .form-container button:hover {
            background-color: #2980b9; /* Darker blue on hover */
        }

        /* Table Styling */
        .table-container {
    margin-top: 30px;
}

.tbl-header {
    background-color: #34495e;
    color: black; /* Change font color from white to black */
}

.tbl-content {
    max-height: 400px;
    overflow-y: auto;
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
}

table {
    width: 100%;
    border-collapse: collapse;
}

table th, table td {
    padding: 12px;
    border: 1px solid #ddd;
    text-align: left;
    font-size: 14px;
    color: black; /* Change font color for table data and headers */
}

table th {
    background-color: #1abc9c;
    color: black; /* Change font color for table headers */
}

table tr:nth-child(even) {
    background-color: #ecf0f1;
}

table tr:nth-child(odd) {
    background-color: #ffffff;
}


        /* Button Styling for Actions (Edit/Delete) */
        .btn {
            background-color: #28a745;
            color: white;
            padding: 8px 16px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 14px;
            transition: background-color 0.3s;
        }

        .btn:hover {
            background-color: #218838;
        }

        .btn-delete {
            background-color: #dc3545;
        }

        .btn-delete:hover {
            background-color: #c82333;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            header {
                text-align: center;
                padding: 15px 0;
            }

            .w3-bar {
                text-align: center;
            }

            .form-container {
                margin: 0 10px;
            }

            .table-container {
                margin: 20px 10px;
            }
        }

        /* Change result and registered students text color to black */
        .form-container p, .table-container p {
            color: black;
        }

    </style>
<body>
<img src="clogo (1).png"  align="left"width="100" height="100">
<center><img src="clogo (1).png" width="100" height="100">
<img src="muktisir.png" align="right"  width="100" height="100"></center>
<div class="w3-container">
  <div class="w3-bar w3-black">
    <button class="w3-bar-item w3-button tablink w3-red" onclick="openCity(event,'London')">Add New Student</button>
    <button class="w3-bar-item w3-button tablink" onclick="openCity(event,'Paris')">Insert New Result</button>
    <button class="w3-bar-item w3-button tablink" onclick="openCity(event,'Tokyo')">Registered Students</button>
     <button class="w3-bar-item w3-button tablink" onclick="openCity(event,'Tokyo1')">All Student Result</button>
     <a href="adminLogin.html" class="w3-bar-item w3-button tablink">Logout</a>
  </div>
  
  <div id="London" class="w3-container w3-border city">
  <br>
   <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Fonts -->
    <link rel="dns-prefetch" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Raleway:300,400,600" rel="stylesheet" type="text/css">



    <link rel="icon" href="Favicon.png">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
</head>
<body>
<main class="my-form">
    <div class="cotainer">
        <div class="row justify-content-center">
            <div class="col-md-8">
                    <div class="card">
                        <div class="card-header">Add New Students</div>
                        <div class="card-body">
                            <form name="my-form" onsubmit="return validform()" action="addNewStudent.jsp" method="post">
                                <div class="form-group row">
                                    <label for="full_name" class="col-md-4 col-form-label text-md-right">Course Name</label>
                                    <div class="col-md-6">
                                        <input type="text"  class="form-control" name="course">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="email_address" class="col-md-4 col-form-label text-md-right">Branch Name</label>
                                    <div class="col-md-6">
                                        <input type="text"  class="form-control" name="branch">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="user_name" class="col-md-4 col-form-label text-md-right">Roll Number</label>
                                    <div class="col-md-6">
                                        <input type="text" class="form-control" name="rollNo">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="phone_number" class="col-md-4 col-form-label text-md-right">Name</label>
                                    <div class="col-md-6">
                                        <input type="text"  class="form-control" name="name">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="present_address" class="col-md-4 col-form-label text-md-right">Father Name</label>
                                    <div class="col-md-6">
                                        <input type="text"  class="form-control" name="fatherName">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="permanent_address" class="col-md-4 col-form-label text-md-right">Gender</label>
                                    <div class="col-md-6">
                                        <input type="text" class="form-control" name="gender">
                                    </div>
                                </div>

                                    <div class="col-md-6 offset-md-4">
                                        <button type="submit" class="btn btn-primary">
                                        Save
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
            </div>
        </div>
    </div>
</main>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</body>
  </div>

  <div id="Paris" class="w3-container w3-border city" style="display:none">
  <br>
  <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Fonts -->
    <link rel="dns-prefetch" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Raleway:300,400,600" rel="stylesheet" type="text/css">



    <link rel="icon" href="Favicon.png">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">

</head>
<body>



<main class="my-form">
    <div class="cotainer">
        <div class="row justify-content-center">
            <div class="col-md-8">
                    <div class="card">
                        <div class="card-header">Insert New Result</div>
                        <div class="card-body">
                            <form name="my-form" onsubmit="return validform()" action="insertNewResult.jsp" method="post">
                                <div class="form-group row">
                                    <label for="full_name" class="col-md-4 col-form-label text-md-right">Roll Number</label>
                                    <div class="col-md-6">
                                        <input type="text"class="form-control" name="rollNo">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="email_address" class="col-md-4 col-form-label text-md-right">Physics</label>
                                    <div class="col-md-6">
                                        <input type="text"  class="form-control" name="s1">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="user_name" class="col-md-4 col-form-label text-md-right">Chemistry</label>
                                    <div class="col-md-6">
                                        <input type="text"  class="form-control" name="s2">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="phone_number" class="col-md-4 col-form-label text-md-right">Spring Boot</label>
                                    <div class="col-md-6">
                                        <input type="text"  class="form-control" name="s3">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="present_address" class="col-md-4 col-form-label text-md-right">Advance Java</label>
                                    <div class="col-md-6">
                                        <input type="text"  class="form-control" name="s4">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="permanent_address" class="col-md-4 col-form-label text-md-right">Skill</label>
                                    <div class="col-md-6">
                                        <input type="text"  class="form-control" name="s5">
                                    </div>
                                </div>
                                
                                 <div class="form-group row">
                                    <label for="permanent_address" class="col-md-4 col-form-label text-md-right">Data Visualisation using Python</label>
                                    <div class="col-md-6">
                                        <input type="text"  class="form-control" name="s6">
                                    </div>
                                </div>
                                
                                 <div class="form-group row">
                                    <label for="permanent_address" class="col-md-4 col-form-label text-md-right">Probability</label>
                                    <div class="col-md-6">
                                        <input type="text" class="form-control" name="s7">
                                    </div>
                                </div>
                                
                                    <div class="col-md-6 offset-md-4">
                                        <button type="submit" class="btn btn-primary">
                                       Save
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
            </div>
        </div>
        <br>
    </div>

</main>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</body>
</html> 
  </div>

  <div id="Tokyo" class="w3-container w3-border city" style="display:none">
  
<section>
  <!--for demo wrap-->
  <div class="tbl-header">
    <table cellpadding="0" cellspacing="0" border="0">
      <thead>
        <tr>
         <th>Course Name</th>
          <th>Branch Name</th>
          <th>Roll Number</th>
          <th>Name</th>
          <th>Father Name</th>
          <th>Gender</th>
          <th>Actions</th> <!-- New column for actions -->
        </tr>
      </thead>
    </table>
  </div>
  <div class="tbl-content">
    <table cellpadding="0" cellspacing="0" border="0">
      <tbody>
      <%@page import="java.sql.*" %>
      <%@page import="Project.ConnectionProvider" %>
      <%try
      {
    	  Connection con=ConnectionProvider.getCon();
    	  Statement st= con.createStatement();
    	  
    	 ResultSet rs= st.executeQuery("select * from student");
    	 while(rs.next())
    	 {
     
      
      %>
      
        <tr>
          <td><%=rs.getString(1) %></td>
          <td><%=rs.getString(2) %></td>
          <td><%=rs.getString(3) %></td>
          <td><%=rs.getString(4) %></td>
          <td><%=rs.getString(5) %></td>
          <td><%=rs.getString(6) %></td>
          <td>
                                <!-- Add Update Button -->
                                <form action="updateStudentForm.jsp" method="post">
                                    <input type="hidden" name="rollNo" value="<%=rs.getString(3) %>">
                                    <button type="submit">Update</button>
                                </form>
                                <!-- Add Delete Button -->
    
     <form action="deleteStudentForm.jsp" method="post" style="display:inline;">
        <input type="hidden" name="rollNo" value="<%=rs.getString(3) %>">
        <button type="submit" onclick="return confirm('Are you sure you want to delete this student?');">Delete</button>
    </form>
                                
                            </td>
        </tr>

      
      <%}}
      catch(Exception e)
      {
    	  e.printStackTrace();
      }
      %>
      </tbody>
    </table>
  </div>
</section>
</div>
<div id="Tokyo1" class="w3-container w3-border city" style="display:none">
   
<section>
  <!--for demo wrap-->
  <div class="tbl-header">
    <table cellpadding="0" cellspacing="0" border="0">
      <thead>
        <tr>
          <th>Roll Number</th>
          <th> Physics</th>
          <th> Chemistry</th>
          <th>Spring Boot</th>
          <th>Advance Java</th>
          <th>SKILL</th>
          <th>Advance Java Lab</th>
          <th>Spring Boot Lab</th>
          <th>Actions</th>
          <th>Total marks</th>
          <th>Grades</th>
        </tr>
      </thead>
    </table>
  </div>
  <div class="tbl-content">
    <table cellpadding="0" cellspacing="0" border="0">
      <tbody>
      <%@page import="java.sql.*" %>
      <%@page import="Project.ConnectionProvider" %>
      <% 
      try{
    	  Connection con=ConnectionProvider.getCon();
    	  Statement st=con.createStatement();
    	  ResultSet rs=st.executeQuery("select * from result");
    	  while(rs.next())
    	  {
      
      %>
        <tr>
          <td><%=rs.getString(1) %></td>
          <td><%=rs.getString(2) %></td>
          <td><%=rs.getString(3) %></td>
          <td><%=rs.getString(4) %></td>
          <td><%=rs.getString(5) %></td>
          <td><%=rs.getString(6) %></td>
          <td><%=rs.getString(7) %></td>
          <td><%=rs.getString(8) %></td>
          <td>
          <!-- Add Update Button -->
            <form action="updateResultForm.jsp" method="post">
              <input type="hidden" name="rollNo" value="<%=rs.getString(1) %>">
              <button type="submit">Update</button>
            </form>
            <!-- Add Delete Button -->
            <form action="deleteResultForm.jsp" method="post" style="display:inline;">
              <input type="hidden" name="rollNo" value="<%=rs.getString(1) %>">
              <button type="submit" onclick="return confirm('Are you sure you want to delete this result?');">Delete</button>
            </form>
          </td>
           <td>
        <% 
            int sum = rs.getInt(2) + rs.getInt(3) + rs.getInt(4) + rs.getInt(5) + rs.getInt(6) + rs.getInt(7) + rs.getInt(8);
            out.println(sum); // Display total sum of marks
        %> 
    </td>
    
    <!-- Calculate and display the grade based on percentage -->
    <td>
        <%
            int percentage = (sum * 100) / 560; // Assuming total marks possible are 560
            String grade = "";
            
            // Grade logic based on percentage
            if (percentage >= 90 && percentage <= 100) {
                grade = "O";
            } else if (percentage >= 80 && percentage < 90) {
                grade = "E";
            } else if (percentage >= 70 && percentage < 80) {
                grade = "A";
            } else if (percentage >= 60 && percentage < 70) {
                grade = "B";
            } else if (percentage >= 50 && percentage < 60) {
                grade = "C";
            } else if (percentage >= 30 && percentage < 50) {
                grade = "D";
            } else {
                grade = "F";
            }
            out.println(grade); // Display the grade
        %>
    </td>
        </tr>
        <% }}
      catch(Exception e)
      {}
        
        %>
      </tbody>
    </table>
  </div>
</section>

</div>
<br>
</body>
</html>