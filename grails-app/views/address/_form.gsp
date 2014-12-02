<%@ page import="org.mj.example.entities.Address" %>



<div class="fieldcontain ${hasErrors(bean: addressInstance, field: 'city', 'error')} required">
	<label for="city">
		<g:message code="address.city.label" default="City" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="city" required="" value="${addressInstance?.city}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: addressInstance, field: 'houseNumber', 'error')} required">
	<label for="houseNumber">
		<g:message code="address.houseNumber.label" default="House Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="houseNumber" required="" value="${addressInstance?.houseNumber}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: addressInstance, field: 'line2', 'error')} required">
	<label for="line2">
		<g:message code="address.line2.label" default="Line2" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="line2" required="" value="${addressInstance?.line2}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: addressInstance, field: 'state', 'error')} required">
	<label for="state">
		<g:message code="address.state.label" default="State" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="state" required="" value="${addressInstance?.state}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: addressInstance, field: 'streetName', 'error')} required">
	<label for="streetName">
		<g:message code="address.streetName.label" default="Street Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="streetName" required="" value="${addressInstance?.streetName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: addressInstance, field: 'streetType', 'error')} required">
	<label for="streetType">
		<g:message code="address.streetType.label" default="Street Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="streetType" required="" value="${addressInstance?.streetType}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: addressInstance, field: 'zipcode', 'error')} required">
	<label for="zipcode">
		<g:message code="address.zipcode.label" default="Zipcode" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="zipcode" required="" value="${addressInstance?.zipcode}"/>

</div>

