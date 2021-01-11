<html>
<head>
<%@ include file="static/header.jspf"%>
<%@ include file="static/navigation.jspf"%>
</head>
<body style="font-size: 17px !important;">
	<div class="container">
		<div class="panel-body" style="padding-left: 0px; font-size: 20px;">
			<b>Welcome ${name}!!</b>
		</div>
		<div style="text-align: center">
			<a type="button" class="btn btn-primary btn-md"
				style="background-color: black; border-color: black;" href="/add">Add
				Todo List</a>
		</div>
		<br>
		<div class="panel panel-primary" style="border-color: black;">
			<div class="panel-heading" style="background-color: black;">
				<h3>Here is your ToDo List</h3>
			</div>
			<div class="panel-body">
				<table class="table table-striped">
					<thead>
						<tr>
							<th>Title</th>
							<th>Description</th>
							<th>Created On</th>
							<th>Last Updated</th>
							<th>Status</th>
							<th></th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${todos}" var="todo">
							<tr>
								<td>${todo.title}</td>
								<td>${todo.description}</td>
								<td>${todo.createdAt}</td>
								<td>${todo.lastUpdated}</td>
								<c:if test="${todo.checked eq 'true' }">
        	<td>Completed</td>
    </c:if>		<c:if test="${todo.checked eq 'false' }">
        	<td>Pending</td>
    </c:if>
				
								<%-- <td>${todo.checked}</td> --%>
								<td><a type="button" class="btn btn-success" style = "background-color: blue"
									href="/update?id=${todo.id}">Update</a> <a type="button"  style = "background-color: red"
									class="btn btn-warning" href="/delete?id=${todo.id}">Delete</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>

	</div>
	<%@ include file="static/footer.jspf"%>
</body>
</html>