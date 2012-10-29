<cfquery name="getRank" datasource="#config.DSN#">
	SELECT name
	FROM ranks
	WHERE id = <CFQUERYPARAM VALUE="#rank#" CFSQLType="CF_SQL_INTGER">
	LIMIT 1
</cfquery>

<cfset rankname = getRank.name>
