<%@include file="common/header.jspf" %>
<%@include file="common/navigation.jspf" %>
<div class="container">
    <h1><spring:message code="add.todo.message" /></h1>
    <form:form method="post" action="" commandName="todo">
        <form:hidden path="id" />
        <fieldset class="form-group">
            <form:label path="desc" for="">Description</form:label>
            <form:input class="form-control" path="desc" type="text" required="required"/>
            <form:errors path="desc" cssClass="text-warning"/>
        </fieldset>

        <fieldset class="form-group">
            <form:label path="targetDate" for="">Target Date</form:label>
            <form:input class="form-control" path="targetDate" type="text" required="required"/>
            <form:errors path="targetDate" cssClass="text-warning"/>
        </fieldset>
        <input class="btn btn-success" type="submit" value=${ isUpadate eq true  ? 'Update' : 'Add'} />

    </form:form>
</div>
<%@include file="common/footer.jspf" %>
