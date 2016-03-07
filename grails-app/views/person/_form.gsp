<%@ page import="delivery.al.toque.login.Person" %>



<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="person.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" required="" value="${personInstance?.username}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="person.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="password" required="" value="${personInstance?.password}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'negocio', 'error')} ">
	<label for="negocio">
		<g:message code="person.negocio.label" default="Negocio" />
		
	</label>
	<g:select id="negocio" name="negocio.id" from="${delivery.al.toque.Negocio.list()}" optionKey="id" value="${personInstance?.negocio?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'sucursal', 'error')} ">
	<label for="sucursal">
		<g:message code="person.sucursal.label" default="Sucursal" />
		
	</label>
	<g:select id="sucursal" name="sucursal.id" from="${delivery.al.toque.Sucursal.list()}" optionKey="id" value="${personInstance?.sucursal?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'accountExpired', 'error')} ">
	<label for="accountExpired">
		<g:message code="person.accountExpired.label" default="Account Expired" />
		
	</label>
	<g:checkBox name="accountExpired" value="${personInstance?.accountExpired}" />
</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'accountLocked', 'error')} ">
	<label for="accountLocked">
		<g:message code="person.accountLocked.label" default="Account Locked" />
		
	</label>
	<g:checkBox name="accountLocked" value="${personInstance?.accountLocked}" />
</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'enabled', 'error')} ">
	<label for="enabled">
		<g:message code="person.enabled.label" default="Enabled" />
		
	</label>
	<g:checkBox name="enabled" value="${personInstance?.enabled}" />
</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'fullname', 'error')} ">
	<label for="fullname">
		<g:message code="person.fullname.label" default="Fullname" />
		
	</label>
	<g:textField name="fullname" value="${personInstance?.fullname}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'passwordExpired', 'error')} ">
	<label for="passwordExpired">
		<g:message code="person.passwordExpired.label" default="Password Expired" />
		
	</label>
	<g:checkBox name="passwordExpired" value="${personInstance?.passwordExpired}" />
</div>

