
<%@ page import="com.speed.dating.domain.MaleParticipant" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'maleParticipant.label', default: 'MaleParticipant')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-maleParticipant" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-maleParticipant" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="speedDatingId" title="${message(code: 'maleParticipant.speedDatingId.label', default: 'Speed Dating Id')}" />
					
						<g:sortableColumn property="age" title="${message(code: 'maleParticipant.age.label', default: 'Age')}" />
					
						<g:sortableColumn property="interestedIn" title="${message(code: 'maleParticipant.interestedIn.label', default: 'Interested In')}" />
					
						<g:sortableColumn property="name" title="${message(code: 'maleParticipant.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="gender" title="${message(code: 'maleParticipant.gender.label', default: 'Gender')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${maleParticipantInstanceList}" status="i" var="maleParticipantInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${maleParticipantInstance.id}">${fieldValue(bean: maleParticipantInstance, field: "speedDatingId")}</g:link></td>
					
						<td>${fieldValue(bean: maleParticipantInstance, field: "age")}</td>
					
						<td>${fieldValue(bean: maleParticipantInstance, field: "interestedIn")}</td>
					
						<td>${fieldValue(bean: maleParticipantInstance, field: "name")}</td>
					
						<td>${fieldValue(bean: maleParticipantInstance, field: "gender")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${maleParticipantInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
