<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    
     <%@taglib  prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
    
    <%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product..</title>
</head>
<body>

<form:form action="product_add" commandName="product" method="post" enctype="multipart/form-data">
	<table cellpadding="5px">
		<tr>
		<td>Product ID</td>
	<c:choose>
		<c:when test="${!empty product.id}">
		<td><form:input type="text" path="id" name="id" disabled="true" readonly="true"/></td>
		</c:when>
		<c:otherwise>
		<td><form:input type="text" path="id" name="id" maxlength="20"/></td>
		</c:otherwise>
		</c:choose>
		</tr>

	<tr>
		<form:input path="id" hidden="true"/>
		<td>Product Name</td>
		<td><form:input type="text" path="name" name="name" maxlength="50" /></td>
	</tr>		
		
	<tr>
		<td>Product Price</td>
		<td><form:input type="text" path="price" name="price" maxlength="5" /></td>
	</tr>
	
	<tr>
		<td>Product Description</td>
		<td><form:input type="text" path="description" name="description" maxlength="100" /></td>
	</tr>
	
	<tr>
		<td>Category List</td>
		<td><form:select path="category.name" items="${categoryList}" itemValue="name" itemLabel="name"></form:select></td>
	</tr>

	<tr>
		<td>Supplier List</td>
		<td><form:select path="supplier.name" items="${supplierList}" itemValue="name" itemLabel="name"></form:select></td>
	</tr>


	
	<tr>
		<td>Product Image</td>
		<td><form:input type="file" path="image" name="image"/></td>
	</tr>
	
	<tr>
	<td>
		<c:if test="${!empty product.name }">
		<input  type="submit" value="<spring:message text="Edit Product"/>"/> 
		</c:if> 

		<c:if test="${empty product.name }"> 
 			<input type="submit" value="<spring:message text="Add Product"/>"/> 
		</c:if> 
		</td>
	</tr>
		
		</table>
	</form:form>
	
		<c:if test="${!empty productList}">
		<table width=100% cellpadding="5px">
			<tr>
				<th width="80">Product ID</th>
				<th width="120">Product Name</th>
				<th width="120">Product Price</th>
				<th width="120">Description</th>
				<th width="120">Category ID</th>
				<th width="120">Supplier  ID</th>
				
				<th>Image</th>
				<th width="60">Edit</th>
				<th width="60">Delete</th>
				
			</tr>
			<c:forEach items="${productList}" var="product">
				<tr>
					<td align="left">${product.id}</td>
					<td align="left">${product.name}</td>
					<td align="left">${product.price}</td>
					<td align="left">${product.description}</td>
					<td align="left">${product.category_id}</td>
					<td align="left">${product.supplier_id}</td>
					
					<td align="center"><img src="<c:url value="/resources/images/${product.id}.jpg"/>" width="240" height="240"/></td>
					<td align="center"><a href="<c:url value='product_edit-${product.id}'/>">EDIT</a></td>
					<td align="center"><a href="<c:url value='product_delete-${product.id}'/>">DELETE</a></td>
				</tr>
			</c:forEach>
		</table>
	</c:if>





</body>
</html>