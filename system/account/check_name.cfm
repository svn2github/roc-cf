<cfif StructKeyExists(url, "reg_name")>
<cfset regname = REMatch("^[-a-zA-Z0-9._:,]+$", url.reg_name)>
<cfif len(url.reg_name) gt 20 OR len(url.reg_name) lt 1>
0
<cfelse>
	<cfif url.reg_name CONTAINS "MOD-" OR url.reg_name CONTAINS "ADMIN-" OR url.reg_name CONTAINS "HOTEL" OR url.reg_name CONTAINS "VIP-" OR url.reg_name CONTAINS "BANNED" OR url.reg_name CONTAINS "www." OR url.reg_name CONTAINS ".com" OR url.reg_name CONTAINS ".co.uk" OR url.reg_name CONTAINS ".tk">
	0
	<cfelse>
		<cfquery name = "NameCheck" datasource = "#DSN#">SELECT username FROM users WHERE username = '#url.reg_name#' LIMIT 1</cfquery>
		<cfif NameCheck.recordcount>0<cfelseif ArrayLen(regname)>1<cfelse>0</cfif>
	</cfif>
</cfif>
<cfelse>
0
</cfif>