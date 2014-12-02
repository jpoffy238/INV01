<%@ page import="org.mj.example.entities.Author" %>



<div class="fieldcontain ${hasErrors(bean: authorInstance, field: 'address', 'error')} required">
	<label for="address">
		<g:message code="author.address.label" default="Address" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="address" name="address.id" from="${org.mj.example.entities.Address.list()}" optionKey="id" required="" value="${authorInstance?.address?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: authorInstance, field: 'books', 'error')} ">
	<label for="books">
		<g:message code="author.books.label" default="Books" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${authorInstance?.books?}" var="b">
    <li><g:link controller="book" action="show" id="${b.id}">${b?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="book" action="create" params="['author.id': authorInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'book.label', default: 'Book')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: authorInstance, field: 'dob', 'error')} required">
	<label for="dob">
		<g:message code="author.dob.label" default="Dob" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dob" precision="day"  value="${authorInstance?.dob}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: authorInstance, field: 'dod', 'error')} required">
	<label for="dod">
		<g:message code="author.dod.label" default="Dod" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dod" precision="day"  value="${authorInstance?.dod}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: authorInstance, field: 'firstName', 'error')} required">
	<label for="firstName">
		<g:message code="author.firstName.label" default="First Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="firstName" required="" value="${authorInstance?.firstName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: authorInstance, field: 'lastName', 'error')} required">
	<label for="lastName">
		<g:message code="author.lastName.label" default="Last Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lastName" required="" value="${authorInstance?.lastName}"/>

</div>

