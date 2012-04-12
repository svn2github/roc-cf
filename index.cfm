<cfif IsDefined('loginme')>
<cfloginuser 
    name = "Admin" 
    password = "password" 
    roles = "roles">
</cfif>
<cfif IsUserLoggedIn() > 
	Hi, <cfoutput>#GetAuthUser()#</cfoutput>!
<cfelse>
    <cfinclude template="themes/Default/index.html">
</cfif>