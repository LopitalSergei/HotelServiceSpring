

<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
        table {
            border-collapse: collapse;
            border-spacing: 0;
            width: 100%;
            border: 1px solid #ddd;
        }

        th, td {
            text-align: left;
            padding: 16px;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2
        }
    </style>
</head>
<body>

<h2>Zebra Striped Table</h2>
<p>For zebra-striped tables, use the nth-child() selector and add a background-color to all even (or odd) table rows:</p>

<table>
    <tr>
        <thead>
        <th>ID</th>
        <th>Username</th>
        <th>Name</th>
        <th>Surname</th>
        <th>email</th>
        <th>Phone number</th>
        <th>Roles</th>
        </thead>
    </tr>
    <c:forEach items="${allUsers}" var="user">
        <tr>
            <td>${user.id}</td>
            <td>${user.username}</td>
            <td>${user.name}</td>
            <td>${user.surname}</td>
            <td>${user.email}</td>
            <td>${user.phoneNumber}</td>
            <td>
                <c:forEach items="${user.roles}" var="role">${role.name}; </c:forEach>
            </td>
            <td>
                <form action="${pageContext.request.contextPath}/admin" method="post">
                    <input type="hidden" name="userId" value="${user.id}"/>
                    <input type="hidden" name="action" value="delete"/>
                    <button type="submit">Delete</button>
                </form>
            </td>

        </tr>
    </c:forEach>
</table>

</body>
</html>



