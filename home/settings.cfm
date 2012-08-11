<cfif Not StructKeyExists(Session, 'id')>
	<cflocation url = "../" addtoken = "no">
</cfif>
<cfset page_css = "home">
<cfset page_js = "settings">
<cfset page_sub = "home">

<cfinclude template = "..\system\templates\header.cfm">
<cfinclude template = "..\system\templates\navigation.cfm">
<cfinclude template = "..\system\templates\subnavigation.cfm">
<cfinclude template = "..\system\templates\modules\homebox.cfm">
<cfinclude template = "..\system\templates\modules\settings.cfm">
<cfinclude template = "..\system\templates\footer.cfm">