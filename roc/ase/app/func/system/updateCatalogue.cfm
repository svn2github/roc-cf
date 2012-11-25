<cfif StructKeyExists(permissions, "update_catalogue")>
	<cfif permissions.update_catalogue eq 1>

		<cfset SocketMessage = "update_catalogue" & Chr(1)>
	
		<cfinclude template="connection/easySocket.cfm">
		<cftry>
			<cfoutput>#easySocket('#musHost#','#musPort#','#SocketMessage#')#</cfoutput>
			<cfcatch>failed</cfcatch>
			success
		</cftry>
		
	<cfelse>
		<cfabort>
	</cfif>
<cfelse>
	<cfabort>
</cfif>
