<cfapplication
	name = "roc-cf" 
    applicationTimeout = #CreateTimeSpan(0, 0, 0, 20)# 
    sessionManagement = "yes"
	sessionTimeout = #CreateTimeSpan(0, 0, 15, 0)#>

	<cfset iniFile = expandPath("app/config.ini")>
	<cfset config.DSN = "phoenix3_dev">
	<cfset sitename = "Housekeeping">

	<cfset minRank = 6>
	<cfset maxRank = 7>

	<cfset musHost = "63.143.52.174">
	<cfset musPort = 1255>
	
	<!--- Share the DSN with the Habbo-imager --->
	<cfset session.DSN = getProfileString(iniFile, "main", "DSN")>
	
	<cfset config.theme = getProfileString(iniFile, "style", "theme")>

	<cfif #CGI.HTTP_X_Forwarded_For# EQ "">
		<cfset ipaddress="#CGI.Remote_Addr#">
	<cfelse>
		<cfset ipaddress="#CGI.HTTP_X_Forwarded_For#">
	</cfif>
	
	<!--- Get user variables --->
	<cfif StructKeyExists(session, "username")>
		<cfinclude template="app/func/getLastLogin.cfm">
		<cfinclude template="app/func/getRank.cfm">
		<cfinclude template="app/func/getRankPermissions.cfm">
	</cfif>
	
	<!--- Get global variables --->
	<cfinclude template="app/func/getUsersOnline.cfm">
