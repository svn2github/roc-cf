<cfif IsUserLoggedIn()>
	<cflocation url = "main.cfm" Addtoken="No">
</cfif>

<cfif not IsDefined('form.username') or not IsDefined('form.password')>
	<cflocation url="index.cfm?error=fields" Addtoken="No">
</cfif>

<cfquery name = "userexists">
	SELECT username
	FROM characters
	WHERE username = '#form.username#'
</cfquery>
<cfif not userexists.RecordCount>
	<cflocation url="index.cfm?error=username" Addtoken="No">
</cfif>

<cfquery name = "passcheck">
	SELECT *
	FROM characters
	WHERE username = '#form.username#'
</cfquery>
<cfif #passcheck.password# eq hash(#form.password#, "MD5")>
<cfloginuser 
    name = "#form.username#" 
    password = "#form.password#" 
    roles = "roles">
	<cflocation url="main.cfm" Addtoken="No">
<cfelse>
	<cflocation url="index.cfm?error=password" Addtoken="No">
</cfif>

