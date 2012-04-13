<cfif StructKeyExists(session, "username")>
	<cflocation url = "../../../main.cfm" Addtoken="No">
</cfif>

<cfif NOT StructKeyExists(form, "login_username") OR NOT StructKeyExists(form, "login_password')>
	<cflocation url="../../../index.cfm?error=fields" Addtoken="No">
</cfif>

<cfquery name = "CheckLogin">
	SELECT password FROM users
	WHERE username = <CFQUERYPARAM VALUE="#form.login_username#" CFSQLType="CF_SQL_VARCHAR" MAXLENGTH="50">
	LIMIT 1
</cfquery>
<cfif NOT CheckLogin.RecordCount>
	<cflocation url="../../../index.cfm?error=username" Addtoken="No">
</cfif>

<cfif hash(form.password, "MD5") is CheckLogin.password>
	
	<!-- Sessions Here -->

<cfelse>
		<cflocation url="../../../index.cfm?error=password" Addtoken="No">
</cfif>
