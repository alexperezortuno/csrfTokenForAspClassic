<!--#include file="securityService.asp"-->
<%
	If Session("token") = Request.Form("_csrf_token") Then
    If Session("token") = Request.Form("_csrf_token") Then
      Response.Write Request.Form("_csrf_token") & "<br>"
      Response.Write Session("token") & "<br>"
		End if
		createCSRFToken()
	Else
		errorCaptcha = "<script>alert(""Codigo inválido. Reintente nuevamente."");</script>"
	End if
%>

<form id="ContactUs" name="ContactUs" method="post" action="">
	<input id="_csrf_token" name="_csrf_token" type="hidden" value="<% Response.Write Session("token") %>">
	<button type="submit" name="button">Send</button>
</form>
