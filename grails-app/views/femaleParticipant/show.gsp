
<%@ page import="com.speed.dating.domain.FemaleParticipant" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'femaleParticipant.label', default: 'FemaleParticipant')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-femaleParticipant" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-femaleParticipant" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list femaleParticipant">
			
				<g:if test="${femaleParticipantInstance?.speedDatingId}">
				<li class="fieldcontain">
					<span id="speedDatingId-label" class="property-label"><g:message code="femaleParticipant.speedDatingId.label" default="Speed Dating Id" /></span>
					
						<span class="property-value" aria-labelledby="speedDatingId-label"><g:fieldValue bean="${femaleParticipantInstance}" field="speedDatingId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${femaleParticipantInstance?.age}">
				<li class="fieldcontain">
					<span id="age-label" class="property-label"><g:message code="femaleParticipant.age.label" default="Age" /></span>
					
						<span class="property-value" aria-labelledby="age-label"><g:fieldValue bean="${femaleParticipantInstance}" field="age"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${femaleParticipantInstance?.interestedIn}">
				<li class="fieldcontain">
					<span id="interestedIn-label" class="property-label"><g:message code="femaleParticipant.interestedIn.label" default="Interested In" /></span>
					
						<span class="property-value" aria-labelledby="interestedIn-label"><g:fieldValue bean="${femaleParticipantInstance}" field="interestedIn"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${femaleParticipantInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="femaleParticipant.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${femaleParticipantInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${femaleParticipantInstance?.gender}">
				<li class="fieldcontain">
					<span id="gender-label" class="property-label"><g:message code="femaleParticipant.gender.label" default="Gender" /></span>
					
						<span class="property-value" aria-labelledby="gender-label"><g:fieldValue bean="${femaleParticipantInstance}" field="gender"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${femaleParticipantInstance?.bustLine}">
				<li class="fieldcontain">
					<span id="bustLine-label" class="property-label"><g:message code="femaleParticipant.bustLine.label" default="Bust Line" /></span>
					
						<span class="property-value" aria-labelledby="bustLine-label"><g:fieldValue bean="${femaleParticipantInstance}" field="bustLine"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${femaleParticipantInstance?.waistLine}">
				<li class="fieldcontain">
					<span id="waistLine-label" class="property-label"><g:message code="femaleParticipant.waistLine.label" default="Waist Line" /></span>
					
						<span class="property-value" aria-labelledby="waistLine-label"><g:fieldValue bean="${femaleParticipantInstance}" field="waistLine"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${femaleParticipantInstance?.hipLine}">
				<li class="fieldcontain">
					<span id="hipLine-label" class="property-label"><g:message code="femaleParticipant.hipLine.label" default="Hip Line" /></span>
					
						<span class="property-value" aria-labelledby="hipLine-label"><g:fieldValue bean="${femaleParticipantInstance}" field="hipLine"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${femaleParticipantInstance?.interests}">
				<li class="fieldcontain">
					<span id="interests-label" class="property-label"><g:message code="femaleParticipant.interests.label" default="Interests" /></span>
					
						<span class="property-value" aria-labelledby="interests-label"><g:fieldValue bean="${femaleParticipantInstance}" field="interests"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${femaleParticipantInstance?.id}" />
					<g:link class="edit" action="edit" id="${femaleParticipantInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
