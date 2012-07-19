<cfapplication
    name = "roc-cf" 
    applicationTimeout = #CreateTimeSpan(0, 0, 0, 20)# 
    sessionManagement = "yes" 
    sessionTimeout = #CreateTimeSpan(0, 0, 15, 0)# >
<cfset iniFile = expandPath("/config.ini")>
<cfset DSN = getProfileString(iniFile, "coldfusion", "DSN")>