<cfquery name="getBadge" datasource="#config.DSN#">
	SELECT badgeid
	FROM ranks
	WHERE id = <CFQUERYPARAM VALUE="#rank#" CFSQLType="CF_SQL_INTGER">
	LIMIT 1
</cfquery>

<cfset badgeid= getBadge.badgeid>
