<cfquery name="getCredits" datasource="#config.DSN#">
	SELECT credits
	FROM users
	WHERE id = #session.userid#
	LIMIT 1
</cfquery>

<cfset credits = getCredits.credits>