<!--#include file="md5.asp"-->
<%
Dim token, md5File, pathSecurity, objMd5, cookiesVars, cookiesStr, cookiesKey, cookieVal, res

Function GetGUID()
    GetGUID = CreateObject("Scriptlet.TypeLib").GUID
End Function

Function createCSRFToken()
  token = MD5(GetGUID())
  Session.Timeout = 1
  Session("token") = token
  Session("token_time") = Time()
End Function

If Request.ServerVariables("REQUEST_METHOD") <> "POST" Or Request.ServerVariables("REQUEST_METHOD") <> "GET" And IsEmpty(Request.Form("_csrf_token")) Then
  createCSRFToken()
End if
%>
