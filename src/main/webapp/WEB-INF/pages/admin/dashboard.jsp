<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.sql.*" %>
<%@ page session="true" %>
<%
String role = (String) session.getAttribute("role");
if (role == null || !role.equals("admin")) {
    response.sendRedirect("login.jsp");
    return;
}
%>
<!DOCTYPE html>
<html>
<head>
  <title>TechSansar</title>
  <link rel="stylesheet" href="css/dashboard.css">
  <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>
<body>
<header><h1>Admin Dashboard</h1></header>
<div class="container">
  <h2>Product List</h2>
  <table>
    <tr><th>ID</th><th>Name</th><th>Price</th><th>Actions</th></tr>
    <%
      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/techsansar", "root", "");
      Statement stmt = con.createStatement();
      ResultSet rs = stmt.executeQuery("SELECT * FROM product");
      while (rs.next()) {
    %>
    <tr>
      <td><%= rs.getInt("id") %></td>
      <td><%= rs.getString("name") %></td>
      <td><%= rs.getInt("price") %></td>
      <td class="actions">
        <form style="display:inline;" action="EditProductServlet" method="post">
          <input type="hidden" name="id" value="<%= rs.getInt("id") %>"/>
          <button class="edit">Edit</button>
        </form>
        <form style="display:inline;" action="DeleteProductServlet" method="post">
          <input type="hidden" name="id" value="<%= rs.getInt("id") %>"/>
          <button class="delete">Delete</button>
        </form>
      </td>
    </tr>
    <% } con.close(); %>
  </table>

  <h2>Product Stats</h2>
  <canvas id="chart" width="400" height="200"></canvas>
</div>

<script>
  const ctx = document.getElementById('chart').getContext('2d');
  const chart = new Chart(ctx, {
    type: 'bar',
    data: {
      labels: ['Product A', 'Product B', 'Product C'], // can be dynamically set
      datasets: [{
        label: 'Sales',
        data: [12, 19, 3],
        backgroundColor: ['#4CAF50', '#FFC107', '#F44336']
      }]
    }
  });
</script>
</body>
</html>
