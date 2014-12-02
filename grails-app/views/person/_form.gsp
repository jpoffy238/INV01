<%@ page import="org.mj.example.entities.Person" %>



<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'address', 'error')} required">
	<label for="address">
		<g:message code="person.address.label" default="Address" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="address" name="address.id" from="${org.mj.example.entities.Address.list()}" optionKey="id" required="" value="${personInstance?.address?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'books', 'error')} ">
	<label for="books">
		<g:message code="person.books.label" default="Books" />
		
	</label>
	<g:select name="books" from="${org.mj.example.entities.Book.list()}" multiple="multiple" optionKey="id" size="5" value="${personInstance?.books*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'dob', 'error')} required">
	<label for="dob">
		<g:message code="person.dob.label" default="Dob" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dob" precision="day"  value="${personInstance?.dob}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'dod', 'error')} required">
	<label for="dod">
		<g:message code="person.dod.label" default="Dod" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dod" precision="day"  value="${personInstance?.dod}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'firstName', 'error')} required">
	<label for="firstName">
		<g:message code="person.firstName.label" default="First Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="firstName" required="" value="${personInstance?.firstName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'lastName', 'error')} required">
	<label for="lastName">
		<g:message code="person.lastName.label" default="Last Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lastName" required="" value="${personInstance?.lastName}"/>

</div>

