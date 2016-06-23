# Implemetation of csrf token for forms in ASP Classic

Include this in the header of your code

```sh
<!--#include file="securityService.asp"-->
```

And can use this code

```sh
<%
  If Session("token") = Request.Form("_csrf_token") Then
    If Session("token") = Request.Form("_csrf_token") Then
      Response.Write Request.Form("_csrf_token") & "<br>"
      Response.Write Session("token") & "<br>"
    End if
		createCSRFToken()
  Else
    errorCaptcha = "<script>alert(""Invalid Code"");</script>"
  End if
%>

<form id="ContactUs" name="ContactUs" method="post" action="">
	<input id="_csrf_token" name="_csrf_token" type="hidden" value="<% Response.Write Session("token") %>">
	<button type="submit" name="button">Send</button>
</form>
```

### createCSRFToken

This function generate tokens automatically, you can save in variables

### Version
0.1
