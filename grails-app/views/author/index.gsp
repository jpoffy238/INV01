
<%@page import="org.mj.example.entities.Address"%>
<%@ page import="org.mj.example.entities.Author" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'author.label', default: 'Author')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-author" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-author" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="author.address.label" default="Address" /></th>
					
						<g:sortableColumn property="dob" title="${message(code: 'author.dob.label', default: 'Dob')}" />
					
						<g:sortableColumn property="dod" title="${message(code: 'author.dod.label', default: 'Dod')}" />
					
						<g:sortableColumn property="firstName" title="${message(code: 'author.firstName.label', default: 'First Name')}" />
					
						<g:sortableColumn property="lastName" title="${message(code: 'author.lastName.label', default: 'Last Name')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${authorInstanceList}" status="i" var="authorInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${authorInstance.id}">${fieldValue(bean: authorInstance.address, field: "city")}</g:link></td>
					
						<td><g:formatDate date="${authorInstance.dob}" /></td>
					
						<td><g:formatDate date="${authorInstance.dod}" /></td>
					
						<td>${fieldValue(bean: authorInstance, field: "firstName")}</td>
					
						<td>${fieldValue(bean: authorInstance, field: "lastName")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${authorInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
