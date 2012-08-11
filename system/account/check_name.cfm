<cfif StructKeyExists(url, "reg_name")>
<cfset regname = rereplace(url.reg_name, "[^A-Za-z0-9_]", "", "ALL")>
<cfquery name = "NameCheck" datasource = "#DSN#">SELECT username FROM users WHERE username = '#regname#' LIMIT 1</cfquery>
<cfif len(regname) gt 20 OR len(regname) lt 1 OR url.reg_name CONTAINS "MOD-" OR url.reg_name CONTAINS "ADMIN-" OR url.reg_name CONTAINS "HOTEL" OR url.reg_name CONTAINS "VIP-" OR url.reg_name CONTAINS "BANNED" OR url.reg_name CONTAINS "www." OR url.reg_name CONTAINS ".com" OR url.reg_name CONTAINS ".co.uk" OR url.reg_name CONTAINS ".tk" OR NameCheck.recordcount>
0
<cfelse>
1
</cfif>
</cfif>