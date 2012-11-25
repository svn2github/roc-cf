<cfif StructKeyExists(permissions, "update_filter")>
	<cfif permissions.update_filter eq 1>

		<cfset SocketMessage = "update_filter" & Chr(1)>
	
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
