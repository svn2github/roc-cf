<cfquery name="getPixels" datasource="#config.DSN#" cachedwithin="#createTimeSpan(0,0,0,30)#">
	SELECT activity_points
	FROM users
	WHERE id = #session.userid#
	LIMIT 1
</cfquery>
	
<cfset pixels = getPixels.activity_points>
