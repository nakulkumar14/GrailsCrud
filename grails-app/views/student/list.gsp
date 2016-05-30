<%@ page import="grailscrud.Student" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'student.label', default: 'Student')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<a href="#list-student" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                              default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                              args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="list-student" class="content scaffold-list" role="main">
    <h1><g:message code="default.list.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <table>
        <thead>
        <tr>

            <g:sortableColumn property="rollNo" title="${message(code: 'student.rollNo.label', default: 'Roll No')}"/>

            <g:sortableColumn property="firstname"
                              title="${message(code: 'student.firstname.label', default: 'Firstname')}"/>

            <g:sortableColumn property="lastname"
                              title="${message(code: 'student.lastname.label', default: 'Lastname')}"/>

            <g:sortableColumn property="dob" title="${message(code: 'student.dob.label', default: 'Dob')}"/>

        </tr>
        </thead>
        <tbody>
        <g:each in="${studentInstanceList}" status="i" var="studentInstance">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                <td><g:link action="show"
                            id="${studentInstance.id}">${fieldValue(bean: studentInstance, field: "rollNo")}</g:link></td>

                <td>${fieldValue(bean: studentInstance, field: "firstname")}</td>

                <td>${fieldValue(bean: studentInstance, field: "lastname")}</td>

                <td><g:formatDate format="dd-MM-yyyy" date="${studentInstance.dob}"/></td>

            </tr>
        </g:each>
        </tbody>
    </table>

    <div class="pagination">
        <g:paginate total="${studentInstanceTotal}"/>
    </div>
</div>
</body>
</html>
