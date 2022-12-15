<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Task Organizer</title>
        <style>
            body {
        		font-family: Helvetica;
        	}
        	table {
          		border: solid #013593 1px;
        		width: 1200px;
        		margin-left: 10px;
        	}
        	.list-view-table-title {
        		margin-left: 10px;
        	}
        	.list-view-table th {
        		background: #7cffef;
        		overflow: hidden;
        		text-align: right;
        		padding: 20px;
        	}
        	.list-view-table td {
        		background: #f5ff95;
        		overflow: hidden;
        		text-align: right;
        		padding: 20px;
        		max-width: 10em;
        	}
            .list-view-table td.action-buttons a:hover,
            .list-view-table td.action-buttons a:active {
              background-color: #f5ff95;
            }
            .delayed-task {
                color: red;
                font-weight: bold;
            }
            .no-value {
                color: blue;
                font-weight: bold;
            }
        	.link-to-create-task {
        		margin-top: 30px;
        		margin-left: 8px;
        		font-size: 14px;
        		font-weight: bold;
        	}
        	.table-top-div {
                 display: flex;
                 width: 2000px;
             }
             .table-top-div div a {
             	margin-left: 890px;
             }
             .link-to-create-task {
        		font-size: 14px;
        		font-weight: bold;
        		margin-bottom: 10px;
        	}
        	.link-to-create-task a:link, .link-to-create-task a:visited {
        	  background-color: #7cffef;
        	  padding: 15px 30px;
        	  text-align: center;
        	  text-decoration: none;
        	  display: inline-block;
        	}
        	.link-to-create-task a:hover, .link-to-create-task a:active {
        	  background-color: #f5ff95;
        	}
        </style>
    </head>
    <body>
        <div class="table-top-div">
    		<div class="list-view-table-title">
    			<h2>List of Tasks</h2>
    		</div>
    		<div class="link-to-create-task">
    			<a href="task_create">CREATE TASK</a>
    		</div>
    	</div>
	    <table class="list-view-table">
	        <tr>
	            <th>ID</th>
	            <th>Title</th>
	            <th>Description</th>
	            <th>Due Date</th>
	            <th>Remarks</th>
	            <th>Status</th>
	            <th>Action</th>
	        </tr>
	        <c:forEach items="${tasks}" var="task">
	            <tr>
	                <td>${task.id}</td>
	                <td>${task.title}</td>
	                <td>
	                <c:if test="${empty task.description}">
	                    <span class="no-value"><em>NO Description</em></span>
                    </c:if>
                        ${task.description}
	                </td>
	                <td><fmt:formatDate value="${task.dueDate}" pattern="MMM dd, yyyy" /></td>
	                <td>
	                    <c:if test="${empty task.description}">
                            <span class="no-value"><em>NO Remarks</em></span>
                        </c:if>
	                    ${task.remarks}
                        <c:if test="${task.dueDate le now}">
                            <br/>
                            - <span class="delayed-task"><em>Delayed</em></span>
                        </c:if>
                    </td>
	                <td>${task.status}</td>
	                <td class="action-buttons">
                        <a href="task/${task.id}">Edit</a>
                         |
                        <a href="delete_task?id=${task.id}">Delete</a>
	                </td>
	            </tr>
	        </c:forEach>
	    </table>
    </body>
</html>