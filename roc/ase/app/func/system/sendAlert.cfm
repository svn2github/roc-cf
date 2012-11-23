<cfif StructKeyExists(permissions, "alert_hotel") OR StructKeyExists(permissions, "alert_hotel_link") OR StructKeyExists(permissions, "alert") OR StructKeyExists(permissions, "alert_room") OR StructKeyExists(permissions, "alert_staff")>

	<cfif StructKeyExists(url, "type") AND StructKeyExists(url, "message")>
		<!--- 1: Alert | 2: Room Alert | 3: Hotel Alert | 4: Room Alert | 5: Staff Alert --->
		<cfset SocketMessage = "">
		<cfif url.type eq 1>
			<cfif permissions.alert eq 1 AND StructKeyExists(url, "userid")>
				<cfset SocketMessage = "alert" & #Chr(1)# & url.userid & " " & url.message & #Chr(10)# & #Chr(10)# & " - " & session.username>
			<cfelse>
				<cfabort>
			</cfif>
		<cfelseif url.type eq 2>
			<cfif permissions.alert_room eq 1 AND StructKeyExists(url, "roomid")>
				<cfset SocketMessage = "alert_room" & #Chr(1)# & url.roomid & " " & url.message & #Chr(10)# & #Chr(10)# & " - " & session.username>
			<cfelse>
				<cfabort>
			</cfif>
		<cfelseif url.type eq 3>
			<cfif permissions.alert_hotel eq 1>
				<cfset SocketMessage = "ha" & #Chr(1)# & url.message & #Chr(10)# & #Chr(10)# & " - " & session.username>
			<cfelse>
				<cfabort>
			</cfif>
		<cfelseif url.type eq 4>
			<cfif permissions.alert_hotel_link eq 1 AND StructKeyExists(url, "url")>
				<cfset SocketMessage = "hal" & #Chr(1)# & url.url & " " & url.message & #Chr(10)# & #Chr(10)# & " - " & session.username>
			<cfelse>
				<cfabort>
			</cfif>
		<cfelseif url.type eq 5>
			<cfif permissions.alert_staff eq 1>
				<cfset SocketMessage = "sa" & #Chr(1)# & url.message & #Chr(10)# & #Chr(10)# & " - " & session.username>
			<cfelse>
				<cfabort>
			</cfif>
		<cfelse>
			<cfabort>
		</cfif>
	<cfelse>
		<cfabort>
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
