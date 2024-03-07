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
        <h1 class="text-3xl font-bold text-blue-600">Student Management</h1>
        <div class="mt-4 flex justify-center space-x-4">
            <a href="new" class="bg-green-500 hover:bg-green-600 text-white font-bold py-2 px-4 rounded">Add New Student</a>
            <a href="list" class="bg-blue-500 hover:bg-blue-600 text-white font-bold py-2 px-4 rounded">List All Students</a>
            <a href="logout" class="bg-red-500 hover:bg-red-600 text-white font-bold py-2 px-4 rounded">Logout</a>
        </div>
    </div>

    <div class="p-3 shadow-md rounded-md m-2">
        <table class="w-full table-auto mx-auto border border-collapse border-gray-300 bg-white">
            <caption class="text-lg font-bold mb-1">List of Students</caption>
            <thead>
                <tr>
                   <!-- <th class="border p-2">ID</th>-->
                    <th class="border p-2">Name</th>
                    <th class="border p-2">Age</th>
                    <th class="border p-2">DOB</th>
                    <th class="border p-2">School</th>
                    <th class="border p-2">Code</th>
                    <th class="border p-2">Email</th>
                    <th class="border p-2">Phone</th>
                    <th class="border p-2">Actions</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="student" items="${result}">
                    <tr>
                        <!--  <td class="border p-3"><c:out value="${student.id}" /></td> -->
                        <td class="border p-2"><c:out value="${student.name}" /></td>
                        <td class="border p-2"><c:out value="${student.age}" /></td>
                        <td class="border px-4"><c:out value="${student.dob}" /></td>
                        <td class="border p-2"><c:out value="${student.school}" /></td>
                        <td class="border px-2"><c:out value="${student.code}" /></td>
                        <td class="border p-2"><c:out value="${student.email}" /></td>
                        <td class="border p-2"><c:out value="${student.mobile}" /></td>
                        <td class="border p-2">
                            <a href="edit?id=<c:out value='${student.id}' />" class="bg-blue-500 hover:bg-blue-600 text-white font-bold py-2 px-5 mx-2 my-2 rounded">Edit</a>
                            <a href="delete?id=<c:out value='${student.id}' />" class="bg-red-500 hover:bg-red-600 text-white font-bold py-2 px-4 my-2 rounded">Delete</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>
