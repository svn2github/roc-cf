<cfquery name="getPixels" datasource="#config.DSN#" cachedwithin="#createTimeSpan(0,0,0,30)#">
	SELECT activity_points
	FROM users
	WHERE id = <CFQUERYPARAM VALUE="#session.userid#" CFSQLType="CF_SQL_INTGER">
	LIMIT 1
</cfquery>
	
<cfset pixels = getPixels.activity_points>
