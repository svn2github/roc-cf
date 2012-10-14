<cfquery name="getOnline" datasource="#config.DSN#">
	SELECT users_online
	FROM server_status
	LIMIT 1
</cfquery>
	
<cfset users_online = getOnline.users_online>