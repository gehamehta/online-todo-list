<html>
<head>
<%@ include file="static/header.jspf"%>
<%@ include file="static/navigation.jspf"%>
</head>
<body>

<div class="container">
	<div class="row">
		<div class="col-md-6 col-md-offset-3 ">
			<div class="panel panel-primary"  style="border-color: black;">
				<div class="panel-heading" style="background-color: black;">Update TODO List</div>
				<div class="panel-body">
					<form:form method="post" modelAttribute="todo">
						<form:hidden path="id" />
							<form:hidden path="createdAt"/>
						<fieldset class="form-group">
							<form:label path="title">Title</form:label>
							<form:input path="title" type="text" class="form-control"
								required="required" />
							<form:errors path="title" cssClass="text-warning" />
						</fieldset>
						<fieldset class="form-group">
							<form:label path="description">Description</form:label>
							<form:input path="description" type="text" class="form-control"
								required="required" />
							<form:errors path="description" cssClass="text-warning" />
						</fieldset>
						<fieldset class="form-group">
							<form:label path="checked">Status</form:label>
							<form:select path="checked"  class="form-control"
								required="required" >
								<option value="True">Completed</option>
								<option value="False">Pending</option>	
								</form:select>
							<form:errors path="description" cssClass="text-warning" />
						</fieldset>
						
					
							<form:hidden path="createdAt"/>
						
						<button type="submit" class="btn btn-success" style="background-color: black;
    border-color: black;">Update</button>
					</form:form>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
<%@ include file="static/footer.jspf"%>
</html>
