<cfquery name="getLastOnline" datasource="#config.DSN#">
	SELECT last_online
	FROM users
	WHERE id = #session.userid#
	LIMIT 1
</cfquery>

<cfset last_online = dateFormat(dateAdd("s", getLastOnline.last_online, "01-01-1970"))>