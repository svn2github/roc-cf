<cfif StructKeyExists(permissions, "summon")>
	<cfif permissions.summon eq 1>

		<cfif StructKeyExists(url, "userid") AND StructKeyExists(url, "roomid")>
			<cfset SocketMessage = "senduser" & Chr(1) & url.userid & " " & url.roomid>
		</cfif>
					
		<cfinclude template="connection/easySocket.cfm">

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
