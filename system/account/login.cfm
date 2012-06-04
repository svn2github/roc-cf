<cfif StructKeyExists(session, "username")>
	<cflocation url = "../../../index.cfm?page=me" Addtoken="No">
<cfelseif NOT StructKeyExists(form, "username")>
	<cflocation url="../../../index.cfm?page=index&reason=field_username" Addtoken="No">
<cfelseif NOT StructKeyExists(form, "password")>
	<cflocation url="../../../index.cfm?page=index&reason=field_password" Addtoken="No">
</cfif>

<cfquery name = "CheckLogin">
	SELECT id, username, mail, password, credits, activity_points FROM users
	WHERE username = <CFQUERYPARAM VALUE="#form.login_username#" CFSQLType="CF_SQL_VARCHAR" MAXLENGTH="50">
	LIMIT 1
</cfquery>
<cfif CheckLogin.RecordCount>

	<cfif hash(form.password, "MD5") is CheckLogin.password>
		
		<!-- Set Regular Session Variables -->
		<cfset session.userid = CheckLogin.id>
		<cfset session.username = CheckLogin.username>
		<cfset session.useremail = CheckLogin.mail>
		<cfset user.credits = CheckLogin.credits>
		<cfset user.pixels = CheckLogin.activity_points>
		<!--- Add additional session variables if needed to prevent having to use lots of MySQL Queries. --->
	
		<cfquery name = "UpdateLastLogin" datasource = "#DSN#">
			UPDATE users
			SET last_online = UNIX_TIMESTAMP(), ip_last = '#CGI.REMOTE_ADDR#'
			WHERE username = <CFQUERYPARAM VALUE="#form.login_username#" CFSQLType="CF_SQL_VARCHAR" MAXLENGTH="50">
		</cfquery>
		
		<cflocation url = "index.cfm?page=me" Addtoken="No">

	<cfelse>
		<cflocation url = "../../../?reason=login_password" Addtoken="No">
	</cfif>

<cfelse>
	<cflocation url = "../../../?reason=login_username" Addtoken="No">
</cfif>