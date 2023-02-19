<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Showing All assidgned requests</title>
<style type="text/css">
table {
	table-layout: fixed;
	 width: 100%; 
}

td.fitwidth {
    width: 1px;
   /*  white-space: nowrap;  */
     word-wrap: break-word;        
    overflow-wrap: break-word;  
}

</style>
</head>
<body>
	<table border=1>
		<thead>
			<tr>
				<th>aid</th>
				<th>Reaquest Id</th>
				<th>Add/Update</th>
				<th>Delete</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${list}" var="query">
				<tr>
					<td><c:out value="${query.aid}" /></td>
					<td class="fitwidth"><c:out
								value="${query.reqid}" /></td>
					<td class="fitwidth"><a
						href="ManageHelp?action=update&ticket_id=<c:out value="${query.ticket_id}"/>">Update</a></td>
					<td class="fitwidth"><a
						href="ManageHelp?action=delete&ticket_id=<c:out value="${query.ticket_id}"/>">Delete</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<p>
		<a href="AdminProfile">Go to Admin Profile</a>
	</p>
</body>
</html>