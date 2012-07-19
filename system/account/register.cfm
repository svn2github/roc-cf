<cfif StructKeyExists(session, "username")>
	<cflocation url = "/main.cfm" Addtoken="No">
</cfif>

<cfif NOT StructKeyExists(form, "username") OR NOT StructKeyExists(form, "email") OR NOT StructKeyExists(form, "rep_email")>
	<cflocation url="/index.cfm?error=register_userdetails" Addtoken="No">
</cfif>

<cfif NOT StructKeyExists(form, "password") OR NOT StructKeyExists(form, "password2") OR NOT hash(form.password, "SHA-512") is hash(form.password2, "SHA-512")>
	<cflocation url="/index.cfm?error=register_password" Addtoken="No">
</cfif>

<cfif Len(form.username) gt 20 OR Len(form.username) lt 1>
	<cflocation url="/index.cfm?error=register_userdetails" Addtoken="No">
<cfelseif Len(form.password) lte 5>
	<cflocation url="/index.cfm?error=register_password" Addtoken="No">
</cfif>

<cfquery name = "NameCheck" datasource = "#DSN#">
	SELECT id
	FROM users
	WHERE username = <CFQUERYPARAM VALUE="#form.username#" CFSQLType="CF_SQL_VARCHAR" MAXLENGTH="50">
	LIMIT 1
</cfquery>

<cfif NameCheck.RecordCount>
	<cflocation url="/index.cfm?error=register_nametaken" Addtoken="No">
	<cfabort>
</cfif>

<cfquery name = "RegisterAccount" datasource = "#DSN#">
	INSERT INTO users (username, password, mail, gender, look, motto, last_online, rank, online, ip_last, auth_ticket, account_created, ip_reg)
	VALUES (<CFQUERYPARAM VALUE="#form.username#" CFSQLType="CF_SQL_VARCHAR" MAXLENGTH="50">, <CFQUERYPARAM VALUE="#hash(form.password, "SHA-512")#" CFSQLType="CF_SQL_VARCHAR" MAXLENGTH="50">, <CFQUERYPARAM VALUE="#form.email#" CFSQLType="CF_SQL_VARCHAR" MAXLENGTH="50">, '#gender#', '#figure#', 'Habboon.com', UNIX_TIMESTAMP(), '1', '0', '#CGI.REMOTE_ADDR#', '', UNIX_TIMESTAMP(), '#CGI.REMOTE_ADDR#')
</cfquery>

<!-- Set Regular Session Variables -->
<cfset session.userid = CheckLogin.id>
<cfset session.username = CheckLogin.username>
<cfset session.useremail = CheckLogin.mail>
<!-- Add additional session variables if needed to prevent having to use lots of MySQL Queries. -->

<cfquery name = "NewAccount" datasource = "#DSN#">
	SELECT id FROM users
	WHERE username = <CFQUERYPARAM VALUE="#form.username#" CFSQLType="CF_SQL_VARCHAR" MAXLENGTH="50">
	LIMIT 1
</cfquery>
<cfquery name = "UsersStats" datasource = "#DSN#">INSERT INTO user_stats (id, RoomVisits, OnlineTime, Respect, RespectGiven, GiftsGiven, GiftsReceived, DailyRespectPoints, DailyPetRespectPoints) VALUES (#NewAccount.id#, 0, 0, 0, 0, 0, 0, 3, 3)</cfquery>
<cfquery name = "UsersStats" datasource = "#DSN#">INSERT INTO user_info (user_id, reg_timestamp) VALUES (#NewAccount.id#, UNIX_TIMESTAMP())</cfquery>

<cflocation url="/main.cfm">
