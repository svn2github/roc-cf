<cfquery name="getCredits" datasource="#config.DSN#" cachedwithin="#createTimeSpan(0,0,0,30)#">
	SELECT credits
	FROM users
	WHERE id = #session.userid#
	LIMIT 1
</cfquery>

<cfset credits = getCredits.credits>
