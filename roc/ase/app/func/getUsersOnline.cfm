<cfquery name="getOnline" datasource="#config.DSN#" cachedwithin="#createTimeSpan(0,0,0,30)#">
	SELECT users_online
	FROM server_status
	LIMIT 1
</cfquery>

<cfset users_online = getOnline.users_online>
