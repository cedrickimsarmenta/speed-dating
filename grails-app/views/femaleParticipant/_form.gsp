<%@ page import="com.speed.dating.domain.FemaleParticipant" %>



<div class="fieldcontain ${hasErrors(bean: femaleParticipantInstance, field: 'speedDatingId', 'error')} required">
	<label for="speedDatingId">
		<g:message code="femaleParticipant.speedDatingId.label" default="Speed Dating Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="speedDatingId" type="number" value="${femaleParticipantInstance.speedDatingId}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: femaleParticipantInstance, field: 'age', 'error')} ">
	<label for="age">
		<g:message code="femaleParticipant.age.label" default="Age" />
		
	</label>
	<g:field name="age" type="number" value="${femaleParticipantInstance.age}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: femaleParticipantInstance, field: 'interestedIn', 'error')} ">
	<label for="interestedIn">
		<g:message code="femaleParticipant.interestedIn.label" default="Interested In" />
		
	</label>
	<g:select name="interestedIn" from="${com.dating.Gender?.values()}" keys="${com.dating.Gender.values()*.name()}" value="${femaleParticipantInstance?.interestedIn?.name()}" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: femaleParticipantInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="femaleParticipant.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${femaleParticipantInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: femaleParticipantInstance, field: 'gender', 'error')} required">
	<label for="gender">
		<g:message code="femaleParticipant.gender.label" default="Gender" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="gender" from="${com.dating.Gender?.values()}" keys="${com.dating.Gender.values()*.name()}" required="" value="${femaleParticipantInstance?.gender?.name()}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: femaleParticipantInstance, field: 'bustLine', 'error')} ">
	<label for="bustLine">
		<g:message code="femaleParticipant.bustLine.label" default="Bust Line" />
		
	</label>
	<g:field name="bustLine" type="number" value="${femaleParticipantInstance.bustLine}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: femaleParticipantInstance, field: 'waistLine', 'error')} ">
	<label for="waistLine">
		<g:message code="femaleParticipant.waistLine.label" default="Waist Line" />
		
	</label>
	<g:field name="waistLine" type="number" value="${femaleParticipantInstance.waistLine}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: femaleParticipantInstance, field: 'hipLine', 'error')} ">
	<label for="hipLine">
		<g:message code="femaleParticipant.hipLine.label" default="Hip Line" />
		
	</label>
	<g:field name="hipLine" type="number" value="${femaleParticipantInstance.hipLine}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: femaleParticipantInstance, field: 'interests', 'error')} ">
	<label for="interests">
		<g:message code="femaleParticipant.interests.label" default="Interests" />
		
	</label>
	
</div>

