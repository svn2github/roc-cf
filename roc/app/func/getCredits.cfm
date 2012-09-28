<cfquery name="getCredits" datasource="#config.DSN#">
	SELECT credits
	FROM users
	WHERE id = #session.userid#
</cfquery>

<cfset credits = getCredits.credits>