<%@ page import="com.speed.dating.domain.MaleParticipant" %>



<div class="fieldcontain ${hasErrors(bean: maleParticipantInstance, field: 'speedDatingId', 'error')} required">
	<label for="speedDatingId">
		<g:message code="maleParticipant.speedDatingId.label" default="Speed Dating Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="speedDatingId" type="number" value="${maleParticipantInstance.speedDatingId}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: maleParticipantInstance, field: 'age', 'error')} ">
	<label for="age">
		<g:message code="maleParticipant.age.label" default="Age" />
		
	</label>
	<g:field name="age" type="number" value="${maleParticipantInstance.age}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: maleParticipantInstance, field: 'interestedIn', 'error')} ">
	<label for="interestedIn">
		<g:message code="maleParticipant.interestedIn.label" default="Interested In" />
		
	</label>
	<g:select name="interestedIn" from="${com.dating.Gender?.values()}" keys="${com.dating.Gender.values()*.name()}" value="${maleParticipantInstance?.interestedIn?.name()}" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: maleParticipantInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="maleParticipant.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${maleParticipantInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: maleParticipantInstance, field: 'gender', 'error')} required">
	<label for="gender">
		<g:message code="maleParticipant.gender.label" default="Gender" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="gender" from="${com.dating.Gender?.values()}" keys="${com.dating.Gender.values()*.name()}" required="" value="${maleParticipantInstance?.gender?.name()}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: maleParticipantInstance, field: 'interests', 'error')} ">
	<label for="interests">
		<g:message code="maleParticipant.interests.label" default="Interests" />
		
	</label>
	
</div>

