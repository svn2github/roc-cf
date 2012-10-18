<cfquery name="getCredits" datasource="#config.DSN#" cachedwithin="#createTimeSpan(0,0,0,30)#">
	SELECT credits
	FROM users
	WHERE id = <CFQUERYPARAM VALUE="#session.userid#" CFSQLType="CF_SQL_INTGER">
	LIMIT 1
</cfquery>

<cfset credits = getCredits.credits>
