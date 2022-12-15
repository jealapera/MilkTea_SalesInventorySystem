<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Task Organizer</title>
        <style>
            body {
         		font-family: Helvetica;
         	}
         	.update-task-form {
         		max-width: 500px;
         	}
         	.update-task-form ul {
         		list-style-type: none;
         	}
         	.update-task-form li {
         		margin-bottom: 10px;
         	}
         	.update-task-form li label {
         		display: inline-block;
         		width: 100px;
         	}
         	.update-task-form li input {
         		display: inline-block;
         		width: 250px;
         		padding: 7px;
         	}
         	.update-task-form select.status-options {
         	    width: 58%;
                padding: 7px;
                border: 1px solid #ccc;
                margin-bottom: 10px;
            }
         	.update-task-form li input[type=submit] {
         		width: 100px;
         		float: right;
         		margin-right: 90px;
         		padding: 7px;
         		background-color: #0fa90f;
         		border: solid #0f6e0f 2px;
         		color: white;
         	}
         	.delayed-task {
                color: red;
                font-weight: bold;
            }
         	.link-to-list-view {
         		max-width: 500px;
         		margin-top: 30px;
         		margin-left: 40px;
         		font-size: 14px;
         		font-weight: bold;
         	}
         	.link-to-list-view a:link, .link-to-list-view a:visited {
         	  background-color: #7cffef;
         	  padding: 14px 25px;
         	  text-align: center;
         	  text-decoration: none;
         	  display: inline-block;
         	}
         	.link-to-list-view a:hover, .link-to-list-view a:active {
         	  background-color: #f5ff95;
         	}
        </style>
    </head>
    <body>
	    <form:form action="/TaskOrganizer/task_update/${task.id}" modelAttribute="task" class="update-task-form">
            <ul>
                <li>
                    <h4>You can change the ff. values to update this selected <u style="color: #0fa90f;">Task</u>.</h4>
                </li>
                <li>
                    <form:label path="id">Task ID: </form:label>
                    <form:input type="text" path="id" value="${task.id}" disabled="true" />
                </li>
                <li>
                    <form:label path="title">Title: </form:label>
                    <form:input type="text" path="title" value="${task.title}" required="required" />
                </li>
                <li>
                    <form:label path="description">Description: </form:label>
                    <form:input type="text" path="description" value="${task.description}" />
                </li>
                <li>
                    <form:label path="dueDate">Due Date: </form:label>
                    <fmt:formatDate value="${task.dueDate}" pattern="yyyy-MM-dd" var="dueDate" />
                    <form:input type="date" path="dueDate" id="dueDate" value="${dueDate}" min="${dateNow}" required="required" />
                </li>
                <li>
                    <form:label path="remarks">Remarks: </form:label>
                    <form:input type="text" path="remarks" value="${task.remarks}" />
                    <c:if test="${dueDate le dateNow}">
                        - <span class="delayed-task"><em>Delayed</em></span>
                    </c:if>
                </li>
                <li>
                    <form:label path="status">Status: </form:label>
                    <select class="status-options" name="status" value="${task.status}">
                        <option value="Pending">Pending</option>
                        <option value="In-progress">In-progress</option>
                        <option value="Done">Done</option>
                        <option value="Rejected">Rejected</option>
                    </select>
                </li>
                <li>
                     <input type="submit" value="Update" />
                </li>
            </ul>
	    </form:form>
	    <hr style="margin-top: 70px;"></hr>
        <div class="link-to-list-view">
            <a href="/TaskOrganizer/task_list">Click here to view the List of Tasks</a>
        </div>
    </body>
</html>