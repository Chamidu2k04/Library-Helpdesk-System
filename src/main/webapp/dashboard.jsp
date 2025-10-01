<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="jakarta.servlet.http.HttpSession" %>
<%
    HttpSession session1 = request.getSession(false);
    String email = (session1 != null) ? (String) session1.getAttribute("email") : null;
    String firstName = (session1 != null) ? (String) session1.getAttribute("firstName") : null;

    if (email == null) {
        response.sendRedirect("login.jsp?error=Please+login+first");
        return;
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>User Dashboard - Library Help Desk</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f0f2f5;
        }

        /* Top Bar */
        .top-bar {
            background-color: #2c3e50;
            color: white;
            padding: 15px 40px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .top-bar h3 {
            margin: 0;
            font-weight: 500;
        }

        .top-bar .user-email {
            font-weight: bold;
        }

        /* Navigation */
        .nav-menu {
            display: flex;
            justify-content: flex-end;
            background-color: #34495e;
            padding: 10px 40px;
        }

        .nav-menu a {
            color: white;
            text-decoration: none;
            margin-left: 20px;
            padding: 8px 16px;
            border-radius: 5px;
            font-weight: 500;
            transition: 0.3s;
        }

        .nav-menu a:hover {
            background-color: #1abc9c;
            color: #fff;
        }

        .nav-menu .logout {
            background-color: #e74c3c;
        }

        .nav-menu .logout:hover {
            background-color: #c0392b;
        }

        /* Dashboard Section */
        .dashboard {
            padding: 30px 40px;
        }

        .dashboard h3 {
            color: #2c3e50;
            margin-bottom: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            background: white;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 4px 12px rgba(0,0,0,0.1);
        }

        table th, table td {
            padding: 15px 20px;
            text-align: left;
            border-bottom: 1px solid #e0e0e0;
        }

        table th {
            background-color: #16a085;
            color: white;
        }

        table tr:hover {
            background-color: #f1f9f8;
        }
    </style>
</head>
<body>

<!-- Top Bar -->
<div class="top-bar">
    <h3>Welcome, <%= firstName %></h3>
    <span class="user-email"><i class="fas fa-envelope"></i> <%= email %></span>
</div>

<!-- Navigation -->
<div class="nav-menu">
    <a href="myTickets.jsp"><i class="fas fa-ticket-alt"></i> Submit a Ticket</a>
    <a href="addReview.jsp"><i class="fas fa-star"></i> Add a Review</a>
    <a href="profile.jsp"><i class="fas fa-user-cog"></i> Profile Management</a>
    <a href="mainpage.jsp" class="logout"><i class="fas fa-sign-out-alt"></i> Logout</a>
</div>

<!-- Dashboard Content -->
<div class="dashboard">
    <h3>📚 Available Books</h3>
    <table>
        <thead>
        <tr>
            <th>Book ID</th>
            <th>Title</th>
            <th>Author</th>
            <th>Category</th>
            <th>Status</th>
        </tr>
        </thead>
        <tbody>
        <tr><td>1</td><td>Clean Code</td><td>Robert C. Martin</td><td>Programming</td><td>Available</td></tr>
        <tr><td>2</td><td>Effective Java</td><td>Joshua Bloch</td><td>Programming</td><td>Checked Out</td></tr>
        <tr><td>3</td><td>The Pragmatic Programmer</td><td>Andrew Hunt</td><td>Programming</td><td>Available</td></tr>
        <tr><td>4</td><td>Design Patterns</td><td>Erich Gamma</td><td>Software Design</td><td>Available</td></tr>
        <tr><td>5</td><td>Introduction to Algorithms</td><td>Thomas H. Cormen</td><td>Algorithms</td><td>Checked Out</td></tr>
        <tr><td>6</td><td>Artificial Intelligence: A Modern Approach</td><td>Stuart Russell</td><td>AI</td><td>Available</td></tr>
        <tr><td>7</td><td>JavaScript: The Good Parts</td><td>Douglas Crockford</td><td>Programming</td><td>Available</td></tr>
        <tr><td>8</td><td>Refactoring</td><td>Martin Fowler</td><td>Programming</td><td>Checked Out</td></tr>
        </tbody>
    </table>
</div>

</body>
</html>
