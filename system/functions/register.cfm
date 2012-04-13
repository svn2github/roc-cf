<cfif IsUserLoggedIn()>
	<cflocation url = "../../../main.cfm" Addtoken="No">
</cfif>

<cfif StructKeyExists(Form, "username")>
	<cfset username = REReplace(form.username, "[^A-Za-z0-9_]", "", "ALL")>
<cfelse>
	<cflocation url="../../../index.cfm?error=reg_username" Addtoken="No">
</cfif>

<cfif StructKeyExists(Form, "email") and StructKeyExists(Form, "email2") and form.email eq email2>
	<cfset email = REReplace(form.email, "[^A-Za-z0-9_]", "", "ALL")>
<cfelse>
	<cflocation url="../../../index.cfm?error=reg_email" Addtoken="No">
</cfif>

<cfif StructKeyExists(Form, "password") and StructKeyExists(Form, "password2") and password eq password2>
	<cfset password = REReplace(form.password, "[^A-Za-z0-9_]", "", "ALL")>
<cfelse>
	<cflocation url="../../../index.cfm?error=reg_password" Addtoken="No">
</cfif>

<cfif len(username) lt 5 or len(username) gt 16>
	<cflocation url="../../../index.cfm?error=reg_username" Addtoken="No">
<cfelseif len(password) lt 6 or len(password)gt 32 or password neq password2>
	<cflocation url="../../../index.cfm?error=reg_password" Addtoken="No">
</cfif>

<!--<cfquery name = "ipcheck" datasource = "vipikas">
	SELECT *
	FROM characters
	WHERE last_ip = '#CGI.REMOTE_ADDR#'
</cfquery>
<cfif ipcheck.recordcount gte 2>
	<cflocation url="index.cfm?error=ip" Addtoken="No">
</cfif>-->

<cfquery name = "namecheck">
	SELECT *
	FROM users
	WHERE username = <CFQUERYPARAM VALUE="#username#" CFSQLType="CF_SQL_VARCHAR" MAXLENGTH="50">
</cfquery>

<cfif namecheck.recordcount>
	<cflocation url="../../../index.cfm?error=reg_nametaken" Addtoken="No">
</cfif>

<cfquery name = "register">
	INSERT INTO users (username, password, mail, gender, look, motto, last_online, rank, online, ip_last, auth_ticket, account_created, ip_reg)
	VALUES (<CFQUERYPARAM VALUE="#username#" CFSQLType="CF_SQL_VARCHAR" MAXLENGTH="50">, <CFQUERYPARAM VALUE="#hash(password, "MD5")#" CFSQLType="CF_SQL_VARCHAR" MAXLENGTH="50">, <CFQUERYPARAM VALUE="#email#" CFSQLType="CF_SQL_VARCHAR" MAXLENGTH="50">, '#gender#', '#figure#', 'Roc CF', UNIX_TIMESTAMP(), '1', '0', '#CGI.REMOTE_ADDR#', '', UNIX_TIMESTAMP(), '#CGI.REMOTE_ADDR#')
</cfquery>

<cfloginuser 
    name = "#username#" 
    password = "#password#" 
    roles = "user">
<cflocation url="../../../main.cfm">