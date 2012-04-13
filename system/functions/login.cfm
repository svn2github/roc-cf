<!-- TO-DO: DSN Configuration File -->

<cfif StructKeyExists(session, "username")>
	<cflocation url = "../../../main.cfm" Addtoken="No">
</cfif>

<cfif NOT StructKeyExists(form, "login_username") OR NOT StructKeyExists(form, "login_password')>
	<cflocation url="../../../index.cfm?error=fields" Addtoken="No">
</cfif>

<cfquery name = "CheckLogin">
	SELECT id, username, mail, password FROM users
	WHERE username = <CFQUERYPARAM VALUE="#form.login_username#" CFSQLType="CF_SQL_VARCHAR" MAXLENGTH="50">
	LIMIT 1
</cfquery>
<cfif NOT CheckLogin.RecordCount>
	<cflocation url="../../../index.cfm?error=username" Addtoken="No">
</cfif>

<cfif hash(form.password, "MD5") is CheckLogin.password>
	
	<!-- Set Regular Session Variables -->
	<cfset session.userid = CheckLogin.id>
	<cfset session.username = CheckLogin.username>
	<cfset session.useremail = CheckLogin.mail>
	<!-- Add additional session variables if needed to prevent having to use lots of MySQL Queries. -->

	<cfquery name = "UpdateLastLogin" datasource = "#DSN#">
		UPDATE users
		SET last_online = UNIX_TIMESTAMP(), ip_last = '#CGI.REMOTE_ADDR#'
		WHERE username = <CFQUERYPARAM VALUE="#form.login_username#" CFSQLType="CF_SQL_VARCHAR" MAXLENGTH="50">
	</cfquery>
	<cflocation url = "../../../main.cfm" Addtoken="No">	
<cfelse>
	<cflocation url="../../../index.cfm?error=password" Addtoken="No">
</cfif>
