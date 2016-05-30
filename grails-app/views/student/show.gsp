<%@ page import="grailscrud.Student" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'student.label', default: 'Student')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
<a href="#show-student" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                              default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]"/></g:link></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                              args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="show-student" class="content scaffold-show" role="main">
    <h1><g:message code="default.show.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <ol class="property-list student">

        <g:if test="${studentInstance?.rollNo}">
            <li class="fieldcontain">
                <span id="rollNo-label" class="property-label"><g:message code="student.rollNo.label"
                                                                          default="Roll No"/></span>

                <span class="property-value" aria-labelledby="rollNo-label"><g:fieldValue bean="${studentInstance}"
                                                                                          field="rollNo"/></span>

            </li>
        </g:if>

        <g:if test="${studentInstance?.firstname}">
            <li class="fieldcontain">
                <span id="firstname-label" class="property-label"><g:message code="student.firstname.label"
                                                                             default="Firstname"/></span>

                <span class="property-value" aria-labelledby="firstname-label"><g:fieldValue bean="${studentInstance}"
                                                                                             field="firstname"/></span>

            </li>
        </g:if>

        <g:if test="${studentInstance?.lastname}">
            <li class="fieldcontain">
                <span id="lastname-label" class="property-label"><g:message code="student.lastname.label"
                                                                            default="Lastname"/></span>

                <span class="property-value" aria-labelledby="lastname-label"><g:fieldValue bean="${studentInstance}"
                                                                                            field="lastname"/></span>

            </li>
        </g:if>

        <g:if test="${studentInstance?.dob}">
            <li class="fieldcontain">
                <span id="dob-label" class="property-label"><g:message code="student.dob.label" default="Dob"/></span>

                <span class="property-value" aria-labelledby="dob-label"><g:formatDate format="dd-MM-yyyy"
                                                                                       date="${studentInstance?.dob}"/>
                </span>

            </li>
        </g:if>

    </ol>
    <g:form>
        <fieldset class="buttons">
            <g:hiddenField name="id" value="${studentInstance?.id}"/>
            <g:link class="edit" action="edit" id="${studentInstance?.id}"><g:message code="default.button.edit.label"
                                                                                      default="Edit"/></g:link>
            <g:actionSubmit class="delete" action="delete"
                            value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                            onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
        </fieldset>
    </g:form>
</div>
</body>
</html>
