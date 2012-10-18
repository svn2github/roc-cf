<cfquery name="getRank" datasource="#config.DSN#">
	SELECT rank
	FROM users
	WHERE id = <CFQUERYPARAM VALUE="#session.userid#" CFSQLType="CF_SQL_INTGER">
	LIMIT 1
</cfquery>

<cfset rank = getRank.rank>
<cfset session.rank = getRank.rank>
