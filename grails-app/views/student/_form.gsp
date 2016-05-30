<%@ page import="grailscrud.Student" %>



<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'rollNo', 'error')} required">
    <label for="rollNo">
        <g:message code="student.rollNo.label" default="Roll No"/>
        <span class="required-indicator">*</span>
    </label>
    <g:field name="rollNo" type="number" value="${studentInstance.rollNo}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'firstname', 'error')} ">
    <label for="firstname">
        <g:message code="student.firstname.label" default="Firstname"/>

    </label>
    <g:textField name="firstname" value="${studentInstance?.firstname}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'lastname', 'error')} ">
    <label for="lastname">
        <g:message code="student.lastname.label" default="Lastname"/>

    </label>
    <g:textField name="lastname" value="${studentInstance?.lastname}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'dob', 'error')} required">
    <label for="dob">
        <g:message code="student.dob.label" default="Dob"/>
        <span class="required-indicator">*</span>
    </label>
    <g:datePicker name="dob" precision="day" value="${studentInstance?.dob}"/>
</div>

