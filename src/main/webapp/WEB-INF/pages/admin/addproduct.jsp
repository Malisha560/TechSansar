<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Add New Product</title>
  <link rel="stylesheet" 
  href="<%= request.getContextPath() %>/css/admin/addproduct.css?v=<%= System.currentTimeMillis() %>">
</head>
<body>
  <div class="container">
    <!-- Sidebar -->
    <div class="sidebar">
      <h2>TechSansar</h2>
      <a href="${pageContext.request.contextPath}/admin/dashboard" class="nav-link">Dashboard</a>
   	  <a href="${pageContext.request.contextPath}/admin/productinfo" class="nav-link">Product Information</a>
      <a href="${pageContext.request.contextPath}/admin/userlist" class="nav-link">User Information</a>
      <a href="${pageContext.request.contextPath}/admin/addproduct" class="nav-link active">Add Product</a>
    </div>

  <div class="main-content">
    <div class="header">Add New Product</div>
    <div class="form-container">
      <div class="form-left">
        <label for="productName">Product Name</label>
        <input type="text" id="productName" placeholder="Enter product name" />

        <label for="productDesc">Product Description</label>
        <textarea id="productDesc" rows="4" placeholder="Enter product description"></textarea>

        <label for="productBrand">Product Brand</label>
        <input type="text" id="productBrand" placeholder="Enter product brand" />

        <label for="productPrice">Product Price</label>
        <input type="text" id="productPrice" placeholder="Enter product price (e.g., Rs.450)" />
        
        <label for="productStock">Stock</label>
<input type="number" id="productStock" name="productStock" placeholder="Enter available stock" />
        
        <button class="update-btn">Update Product</button>
      </div>

      <div class="form-right">
        <img id="previewImage" class="image-placeholder" alt="Preview" />
        <div class="upload-box">
          <input type="file" id="fileInput" accept="image/*" onchange="previewFile()" />
          <label for="fileInput">Add File</label>
        </div>
      </div>
    </div>
  </div>

  <script>
    function previewFile() {
      const preview = document.getElementById("previewImage");
      const file = document.getElementById("fileInput").files[0];
      const reader = new FileReader();

      reader.addEventListener("load", function () {
        preview.src = reader.result;
      }, false);

      if (file) {
        reader.readAsDataURL(file);
      }
    }
  </script>
</body>
</html>
