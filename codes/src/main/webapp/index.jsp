<%--
  Created by IntelliJ IDEA.
  User: daiya
  Date: 2017/6/29
  Time: 17:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  $END$
  <div>
<%--<c:forEach [var="varName"] items="collection" [varStatus="varStatusName"] [begin="begin"] [end="end"] [step="step"]>--%>
  	<c:forEach items="${domainList }" var="item">
	<tr>
	  <td align="center" valign="middle">${item["domain"]==null?"&nbsp;":item["domain"]}</td>
  <td align="center" valign="middle"><fmt:formatDate value="${item['bind_date']}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
  <td align="center" valign="middle">
 	    <c:if test="${item['domain']!=null}">
 	    <a href="javascript:;" id="${item['domain']}" class="del">&nbsp;</a>
  	    </c:if>
	    </td>
 	</tr>
</c:forEach>

  </div>
  </body>
</html>
