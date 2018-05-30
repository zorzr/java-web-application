<%@ page import="com.esercitazione.PhoneBookEntry" %>
<%@ page import="java.util.List" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Phonebook</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
          integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
</head>
<body>

<% List<PhoneBookEntry> entries = (List<PhoneBookEntry>) request.getAttribute("entries"); %>

<div class="container" style="margin-left:10%">
    <h1>Phonebook</h1>
    <table class="table table-striped table-hover">
        <thead>
        <tr>
            <th>Name</th>
            <th>Surname</th>
            <th>Phone</th>
        </tr>
        </thead>

        <tbody>
        <% for(PhoneBookEntry entry : entries) { %>
        <tr>
            <td><% out.print(entry.getName()); %></td>
            <td><% out.print(entry.getSurname()); %></td>
            <td><% out.print(entry.getPhone()); %></td>
        </tr>
        <% } %>
        </tbody>
    </table>

    <a class="btn btn-primary" href="../index.jsp" role="button">Home</a>
</div>

</body>
</html>
