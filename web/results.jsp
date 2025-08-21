<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*, com.main.FileModel" %>
<!DOCTYPE html>
<html>
<head>
    <title>Search Results</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(70deg,#f0f8ff,#84d2ee,#a2c2f1);
            padding: 20px;
        }
        .container {
            max-width: 1000px;
            margin: 0 auto;
        }
        h2 {
            text-align: center;
            color: #333;
        }
        .card {
            background: #fff;
            border-radius: 12px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
            padding: 20px;
            margin: 15px 0;
            transition: 0.3s;
        }
        .card:hover {
            transform: scale(1.02);
            box-shadow: 0 6px 12px rgba(0,0,0,0.2);
        }
        .card-title {
            font-size: 20px;
            font-weight: bold;
            color: #007bff;
        }
        .card-detail {
            margin: 5px 0;
            font-size: 16px;
            color: #555;
        }
        .download-btn {
            display: inline-block;
            margin-top: 10px;
            padding: 8px 14px;
            background: #28a745;
            color: white;
            text-decoration: none;
            border-radius: 6px;
            font-size: 14px;
        }
        .download-btn:hover {
            background: #218838;
        }
        .no-result {
            text-align: center;
            color: red;
            font-size: 18px;
            margin-top: 20px;
        }
    </style>
</head>
<body>
<div class="container">
    <h2>📂 Search Results</h2>

    <%
        List<FileModel> results = (List<FileModel>) request.getAttribute("results");
        String message = (String) request.getAttribute("message");

        if (message != null) {
    %>
        <p class="no-result"><%= message %></p>
    <%
        } else if (results == null || results.isEmpty()) {
    %>
        <p class="no-result">❌ No Result Found.</p>
    <%
        } else {
            for (FileModel file : results) {
    %>
        <div class="card">
            <div class="card-title"><%= file.getTitle() %></div>
            <div class="card-detail">📖 Subject: <%= file.getSubject() %></div>
            <div class="card-detail">🎓 Semester: <%= file.getSemester() %></div>
            <div class="card-detail">🎓 Branch: <%= file.getBranch() %></div>
            <a href="download?id=<%= file.getId() %>" class="download-btn">⬇ Download <%= file.getFileName() %></a>
        </div>
    <%
            }
        }
    %>
</div>
</body>
</html>
