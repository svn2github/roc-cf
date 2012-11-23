<cfif StructKeyExists(permissions, "disconnect")>
	<cfif permissions.disconnect eq 1>

		<cfif StructKeyExists(url, "userid")>
			<cfset SocketMessage = "signout" & #Chr(1)# & url.userid>
		</cfif>
					
		<cfinclude template="./connection/easySocket.cfm">

		<cftry>
			<cfoutput>#easySocket('#musHost#','#musPort#','#SocketMessage#')#</cfoutput>
			<cfcatch>failed</cfcatch>
			success
		</cftry>

	<cfelse>
		<cfabort>
	</cfif>
</cfelse>
	<cfabort>
</cfif>
