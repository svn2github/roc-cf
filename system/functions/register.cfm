<cfif IsUserLoggedIn()>
	<cflocation url = "main.cfm" Addtoken="No">
</cfif>

<cfif IsDefined('form.username')>
	<cfset username = REReplace(form.username, "[^A-Za-z0-9_]", "", "ALL")>
<cfelse>
	<cflocation url="register.cfm?error=username" Addtoken="No">
</cfif>

<cfif IsDefined('form.password') and IsDefined('form.password2')>
	<cfset password = REReplace(form.password, "[^A-Za-z0-9_]", "", "ALL")>
	<cfset password2 = REReplace(form.password2, "[^A-Za-z0-9_]", "", "ALL")>
<cfelse>
	<cflocation url="register.cfm?error=password" Addtoken="No">
</cfif>

<cfif not IsDefined('username') or len(username) lt 5 or len(username) gt 16>
	<cflocation url="register.cfm?error=username" Addtoken="No">
<cfelseif not IsDefined('password') or not IsDefined('password2') or len(password) lt 6 or len(password)gt 32 or password neq password2>
	<cflocation url="register.cfm?error=password" Addtoken="No">
</cfif>

<!--<cfquery name = "ipcheck" datasource = "vipikas">
	SELECT *
	FROM characters
	WHERE last_ip = '#CGI.REMOTE_ADDR#'
</cfquery>
<cfif ipcheck.recordcount gte 2>
	<cflocation url="index.cfm?error=ip" Addtoken="No">
</cfif>-->

<cfquery name = "namecheck" datasource = "vipikas">
	SELECT *
	FROM users
	WHERE username = <CFQUERYPARAM VALUE="#username#" CFSQLType="CF_SQL_VARCHAR" MAXLENGTH="50">
</cfquery>

<cfif namecheck.recordcount>
	<cflocation url="register.cfm?error=nametaken" Addtoken="No">
</cfif>

<cfset userid = #getusersid.recordcount#+1>
	<cfquery name = "register" datasource = "vipikas">
		INSERT INTO users (username, password, mail, gender, look, motto, last_online, rank, online, ip_last, auth_ticket, account_created, ip_reg)
		VALUES ('#username#', '#hash(password, "MD5")#', '#form.reg_email#', '#gender#', '#figure#', 'Roc CF', UNIX_TIMESTAMP(), '1', '0', '#CGI.REMOTE_ADDR#', '', UNIX_TIMESTAMP(), '#CGI.REMOTE_ADDR#')
	</cfquery>

<cfloginuser 
    name = "#username#" 
    password = "#password#" 
    roles = "user">
<cflocation url="main.cfm">