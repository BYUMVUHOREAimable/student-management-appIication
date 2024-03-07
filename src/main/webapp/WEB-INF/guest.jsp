<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>BAI</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css">
</head>
<body class="bg-gray-100">
    <div class="text-center py-8">
    <marquee><h2 class="text-success text-3xl font-bold text-green-600">Dear guest, even if you are getting the table but you don't have permission to see the details</h2></marquee>
        <h1 class="text-3xl font-bold text-blue-600">Student Management</h1>
        <div class="mt-4 flex justify-center space-x-4">
            <!--  <a href="list" class="bg-blue-500 hover:bg-blue-600 text-white font-bold py-2 px-4 rounded">List All Students</a>-->
            <a href="logout" class="bg-red-500 hover:bg-red-600 text-white font-bold py-2 px-4 rounded">Logout</a>
        </div>
    </div>

    <div class="p-3 shadow-md rounded-md m-2">
        <table class="w-full table-auto mx-auto border border-collapse border-gray-300 bg-white">
            <caption class="text-lg font-bold mb-1">List of Students</caption>
            <thead>
                <tr>
                    <th class="border p-2">ID</th>
                    <th class="border p-2">Name</th>
                    <th class="border p-2">Age</th>
                    <th class="border p-2">DOB</th>
                    <th class="border p-2">School</th>
                    <th class="border p-2">Code</th>
                    <th class="border p-2">Email</th>
                    <th class="border p-2">Phone</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="student" items="${result}">
                    <tr>
                        <td class="border p-3"><c:out value="${student.id}" /></td>
                        <td class="border p-2"><c:out value="${student.name}" /></td>
                        <td class="border p-2"><c:out value="${student.age}" /></td>
                        <td class="border px-4"><c:out value="${student.dob}" /></td>
                        <td class="border p-2"><c:out value="${student.school}" /></td>
                        <td class="border px-2"><c:out value="${student.code}" /></td>
                        <td class="border p-2"><c:out value="${student.email}" /></td>
                        <td class="border p-2"><c:out value="${student.mobile}" /></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>
