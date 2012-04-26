<!-- TO-DO: DSN Configuration File -->

<cfif StructKeyExists(session, "username")>
	<cflocation url = "../../../main.cfm" Addtoken="No">
</cfif>

<cfif NOT StructKeyExists(form, "register_username") OR NOT StructKeyExists(form, "register_email") OR NOT StructKeyExists(form, "register_email_confirm")>
	<cflocation url="../../../index.cfm?error=register_userdetails" Addtoken="No">
</cfif>

<cfif NOT StructKeyExists(form, "register_password") OR NOT StructKeyExists(form, "register_password_confirm") OR NOT hash(form.register_password, "MD5") is hash(form.register_password_confirm, "MD5")>
	<cflocation url="../../../index.cfm?error=register_password" Addtoken="No">
</cfif>

<cfif Len(form.register_username) gt 20>
	<cflocation url="../../../index.cfm?error=register_userdetails" Addtoken="No">
<cfelseif Len(form.register_password) lte 2>
	<cflocation url="../../../index.cfm?error=register_password" Addtoken="No">
</cfif>

<cfquery name = "NameCheck">
	SELECT id
	FROM users
	WHERE username = <CFQUERYPARAM VALUE="#form.register_username#" CFSQLType="CF_SQL_VARCHAR" MAXLENGTH="50">
</cfquery>

<cfif NameCheck.RecordCount>
	<cflocation url="../../../index.cfm?error=register_nametaken" Addtoken="No">
	<cfabort>
</cfif>

<!-- Still need to add additional content, like look, gender and other checks -->

<cfquery name = "RegisterAccount">
	INSERT INTO users (username, password, mail, gender, look, motto, last_online, rank, online, ip_last, auth_ticket, account_created, ip_reg)
	VALUES (<CFQUERYPARAM VALUE="#form.register_username#" CFSQLType="CF_SQL_VARCHAR" MAXLENGTH="50">, <CFQUERYPARAM VALUE="#hash(form.register_password, "MD5")#" CFSQLType="CF_SQL_VARCHAR" MAXLENGTH="50">, <CFQUERYPARAM VALUE="#form.register_email#" CFSQLType="CF_SQL_VARCHAR" MAXLENGTH="50">, '#gender#', '#figure#', 'Roc CF', UNIX_TIMESTAMP(), '1', '0', '#CGI.REMOTE_ADDR#', '', UNIX_TIMESTAMP(), '#CGI.REMOTE_ADDR#')
</cfquery>

<!-- Set Regular Session Variables -->
<cfset session.userid = CheckLogin.id>
<cfset session.username = CheckLogin.username>
<cfset session.useremail = CheckLogin.mail>
<!-- Add additional session variables if needed to prevent having to use lots of MySQL Queries. -->

<cfquery name = "NewAccount" datasource = "#DSN#">
SELECT id FROM users
WHERE username = <CFQUERYPARAM VALUE="#form.register_username#" CFSQLType="CF_SQL_VARCHAR" MAXLENGTH="50">
LIMIT 1
</cfquery>
<cfquery name = "UsersStats" datasource = "#DSN#">INSERT INTO user_stats (id, RoomVisits, OnlineTime, Respect, RespectGiven, GiftsGiven, GiftsReceived, DailyRespectPoints, DailyPetRespectPoints) VALUES (#NewAccount.id#, 0, 0, 0, 0, 0, 0, 3, 3)</cfquery>
<cfquery name = "UsersStats" datasource = "#DSN#">INSERT INTO user_info (user_id, reg_timestamp) VALUES (#NewAccount.id#, UNIX_TIMESTAMP())</cfquery>

<cflocation url="../../../main.cfm">
