<%@page import="model.PatientModel"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Patient Management</title>
<link rel="stylesheet" href="Views/bootstrap.min.css">
<script src="Components/jquery-3.5.0.min.js"></script>
<script src="Components/items.js"></script>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-6">
				<h1>Patient Management</h1>
				<form id="formItem" name="formItem">
					Patient Email: <input id="patientEmail" name="patientEmail"
						type="text" class="form-control form-control-sm"> <br>
					Patient Name: <input id="patientName" name="patientName"
						type="text" class="form-control form-control-sm"> <br>
					Patient Age: <input id="patientAge" name="patientAge" type="text"
						class="form-control form-control-sm"> <br> Patient
					Disease: <input id="patientdis" name="patientdis" type="text"
						class="form-control form-control-sm"> <br> Patient
					Address: <input id="patientAdds " name="patientAdds" type="text"
						class="form-control form-control-sm"> <br> Patient
					Gender: <input id="patientgen " name="patientgen" type="text"
						class="form-control form-control-sm"> <br> <input
						id="btnSave" name="btnSave" type="button" value="Save"
						class="btn btn-primary"> <input type="hidden"
						id="hidItemIDSave" name="hidItemIDSave" value="">
				</form>
				<div id="alertSuccess" class="alert alert-success"></div>
				<div id="alertError" class="alert alert-danger"></div>
				<br>
				<div id="divItemsGrid">
					<%
						PatientModel patientObj = new PatientModel();
						out.print(patientObj.patientRead());
					%>
				</div>

			</div>
		</div>
	</div>

</body>
</html>
