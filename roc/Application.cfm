<cfapplication
	name = "roc-cf" 
    applicationTimeout = #CreateTimeSpan(0, 0, 0, 20)# 
    sessionManagement = "yes"
	sessionTimeout = #CreateTimeSpan(0, 0, 15, 0)#>
	
	<cfset iniFile = expandPath("app/config.ini")>
	<cfset config.DSN = "boon">
	<cfset sitename = "Habboon Hotel">
	<cfset defaultMotto = "Thank you for installing Roc CF.">
	<cfset defaultLook = "hr-100.hd-180-1.ch-210-66.lg-270-82.sh-290-91">
	<cfset starterCredits = "20">
	<cfset starterPixels = "10">
	
	<!--- Share the DSN with the Habbo-imager --->
	<cfset session.DSN = getProfileString(iniFile, "main", "DSN")>
	
	<cfset CONFIG.THEME = getProfileString(iniFile, "style", "theme")>
	
	<cfif #CGI.HTTP_X_Forwarded_For# EQ "">
		<cfset ipaddress="#CGI.Remote_Addr#">
	<cfelse>
		<cfset ipaddress="#CGI.HTTP_X_Forwarded_For#">
	</cfif>
	
	<!--- Get Habbo webbuild --->
	<cfif not StructKeyExists(Session,'webbuild')>
		<cfhttp url = "http://www.habbo.nl">
		<cfset String = cfhttp.filecontent />
		<cfset StartText = 'http://images.habbo.com/habboweb/' />
		<cfset Start = FindNoCase(StartText, String, 1) />
		<cfset EndText = '/web-gallery/v2/favicon.ico' />
		<cfset Length = Len(StartText) />
		<cfset End = FindNoCase(EndText, String, Start) />
		<cfset Build = Mid(String, Start+Length, End-Start-Length) />
		<cfset Build = trim(Build) />
		<cfset Session.webbuild = Build />
	</cfif>
	
	<!--- Get user variables --->
	<cfif StructKeyExists(session, "username")>
		<cfinclude template="app/func/getLastLogin.cfm">
		<cfinclude template="app/func/getMotto.cfm">
		<cfinclude template="app/func/getRank.cfm">
	</cfif>
	
	<!--- Get global variables --->
	<cfinclude template="app/func/getUsersOnline.cfm">