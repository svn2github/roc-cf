<cfquery name="getPixels" datasource="#config.DSN#">
	SELECT activity_points
	FROM users
	WHERE id = #session.userid#
</cfquery>
	
<cfset pixels = getPixels.activity_points>