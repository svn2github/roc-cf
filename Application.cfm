<cfapplication
    name = "roc-cf" 
    applicationTimeout = #CreateTimeSpan(0, 0, 0, 20)# 
    sessionManagement = "yes" 
    sessionTimeout = #CreateTimeSpan(0, 0, 15, 0)# >

<!-- Read config.ini settings & apply them -->
<cfset iniFile = expandPath("/config.ini")>
<cfset DSN = getProfileString(iniFile, "coldfusion", "DSN")>
<!-- Read config.ini settings & apply them -->

<cfset theme = "Default">
<cfset sitename = "Habboon">
