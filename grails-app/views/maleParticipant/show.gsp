
<%@ page import="com.speed.dating.domain.MaleParticipant" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'maleParticipant.label', default: 'MaleParticipant')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-maleParticipant" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-maleParticipant" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list maleParticipant">
			
				<g:if test="${maleParticipantInstance?.speedDatingId}">
				<li class="fieldcontain">
					<span id="speedDatingId-label" class="property-label"><g:message code="maleParticipant.speedDatingId.label" default="Speed Dating Id" /></span>
					
						<span class="property-value" aria-labelledby="speedDatingId-label"><g:fieldValue bean="${maleParticipantInstance}" field="speedDatingId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${maleParticipantInstance?.age}">
				<li class="fieldcontain">
					<span id="age-label" class="property-label"><g:message code="maleParticipant.age.label" default="Age" /></span>
					
						<span class="property-value" aria-labelledby="age-label"><g:fieldValue bean="${maleParticipantInstance}" field="age"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${maleParticipantInstance?.interestedIn}">
				<li class="fieldcontain">
					<span id="interestedIn-label" class="property-label"><g:message code="maleParticipant.interestedIn.label" default="Interested In" /></span>
					
						<span class="property-value" aria-labelledby="interestedIn-label"><g:fieldValue bean="${maleParticipantInstance}" field="interestedIn"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${maleParticipantInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="maleParticipant.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${maleParticipantInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${maleParticipantInstance?.gender}">
				<li class="fieldcontain">
					<span id="gender-label" class="property-label"><g:message code="maleParticipant.gender.label" default="Gender" /></span>
					
						<span class="property-value" aria-labelledby="gender-label"><g:fieldValue bean="${maleParticipantInstance}" field="gender"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${maleParticipantInstance?.interests}">
				<li class="fieldcontain">
					<span id="interests-label" class="property-label"><g:message code="maleParticipant.interests.label" default="Interests" /></span>
					
						<span class="property-value" aria-labelledby="interests-label"><g:fieldValue bean="${maleParticipantInstance}" field="interests"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${maleParticipantInstance?.id}" />
					<g:link class="edit" action="edit" id="${maleParticipantInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
