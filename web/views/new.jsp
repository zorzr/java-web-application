<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>New</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
          integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
</head>
<body>
<div style="margin-left:10%">
    <h1>Add contact to the phonebook</h1>
</div>

<div style="margin-left:10%;margin-right:65%">
    <form action="../phonebook/new" method="post">
        <div class="form-group">
            <label for="n">Name</label>
            <input type="text" id="n" name="name" class="form-control" required>
        </div>
        <div class="form-group">
            <label for="s">Surname</label>
            <input type="text" id="s" name="surname" class="form-control" required>
        </div>
        <div class="form-group">
            <label for="p">Phone</label>
            <input type="text" id="p" name="phone" class="form-control" required>
        </div>
        <div class="form-group">
            <input class="btn btn-primary" type="submit" value="Submit entry"/>
            <a class="btn btn-danger" href="../index.jsp" role="button">Back</a>
        </div>
    </form>
</div>
</body>
</html>
