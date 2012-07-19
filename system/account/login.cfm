<cfif StructKeyExists(session, "username")>
	<cflocation url = "/main.cfm" Addtoken="No">
<cfelseif NOT StructKeyExists(form, "username") OR form.username is "">
	<cflocation url="/index.cfm?reason=field_username" Addtoken="No">
<cfelseif NOT StructKeyExists(form, "password") OR form.password is "">
	<cflocation url="/index.cfm?reason=field_password" Addtoken="No">
</cfif>

<cfquery name = "CheckLogin" datasource = "#DSN#">
	SELECT id, username, mail, password FROM users
	WHERE username = <CFQUERYPARAM VALUE="#form.username#" CFSQLType="CF_SQL_VARCHAR" MAXLENGTH="50">
	LIMIT 1
</cfquery>

<cfif CheckLogin.RecordCount>
	<cfif hash(form.password, "SHA-512") is CheckLogin.password>
		
		<!-- Set Regular Session Variables -->
		<cfset session.userid = CheckLogin.id>
		<cfset session.username = CheckLogin.username>
		<cfset session.useremail = CheckLogin.mail>
		<!-- Add additional session variables if needed to prevent having to use lots of MySQL Queries. -->
	
		<cfquery name = "UpdateLastLogin" datasource = "#DSN#">
			UPDATE users
			SET last_online = UNIX_TIMESTAMP(), ip_last = '#CGI.REMOTE_ADDR#'
			WHERE username = <CFQUERYPARAM VALUE="#form.username#" CFSQLType="CF_SQL_VARCHAR" MAXLENGTH="50">
		</cfquery>
		
		<cflocation url="/main.cfm" Addtoken="No">

	<cfelse>
		<cflocation url="/?reason=login_password" Addtoken="No">
	</cfif>

<cfelse>
	<cflocation url="/?reason=login_username" Addtoken="No">
</cfif>
