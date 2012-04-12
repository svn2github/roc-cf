<cfif IsUserLoggedIn()>
	<cflocation url = "../../../main.cfm" Addtoken="No">
</cfif>

<cfif not IsDefined('form.username') or not IsDefined('form.password')>
	<cflocation url="../../../index.cfm?error=fields" Addtoken="No">
</cfif>

<cfquery name = "userinfo">
	SELECT *
	FROM users
	WHERE username = <CFQUERYPARAM VALUE="#form.username#" CFSQLType="CF_SQL_VARCHAR" MAXLENGTH="50">
</cfquery>
<cfif not userinfo.RecordCount>
	<cflocation url="../../../index.cfm?error=username" Addtoken="No">
</cfif>

<cfif #userinfo.password# eq hash(#form.password#, "MD5")>
<cfloginuser 
    name = "#form.username#" 
    password = "#form.password#" 
    roles = "roles">
	<cflocation url="main.cfm" Addtoken="No">
<cfelse>
	<cflocation url="../../../index.cfm?error=password" Addtoken="No">
</cfif>