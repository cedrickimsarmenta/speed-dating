
<%@ page import="com.speed.dating.domain.FemaleParticipant" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'femaleParticipant.label', default: 'FemaleParticipant')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-femaleParticipant" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-femaleParticipant" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="speedDatingId" title="${message(code: 'femaleParticipant.speedDatingId.label', default: 'Speed Dating Id')}" />
					
						<g:sortableColumn property="age" title="${message(code: 'femaleParticipant.age.label', default: 'Age')}" />
					
						<g:sortableColumn property="interestedIn" title="${message(code: 'femaleParticipant.interestedIn.label', default: 'Interested In')}" />
					
						<g:sortableColumn property="name" title="${message(code: 'femaleParticipant.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="gender" title="${message(code: 'femaleParticipant.gender.label', default: 'Gender')}" />
					
						<g:sortableColumn property="bustLine" title="${message(code: 'femaleParticipant.bustLine.label', default: 'Bust Line')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${femaleParticipantInstanceList}" status="i" var="femaleParticipantInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${femaleParticipantInstance.id}">${fieldValue(bean: femaleParticipantInstance, field: "speedDatingId")}</g:link></td>
					
						<td>${fieldValue(bean: femaleParticipantInstance, field: "age")}</td>
					
						<td>${fieldValue(bean: femaleParticipantInstance, field: "interestedIn")}</td>
					
						<td>${fieldValue(bean: femaleParticipantInstance, field: "name")}</td>
					
						<td>${fieldValue(bean: femaleParticipantInstance, field: "gender")}</td>
					
						<td>${fieldValue(bean: femaleParticipantInstance, field: "bustLine")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${femaleParticipantInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
