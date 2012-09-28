<cfquery name="getRank" datasource="#config.DSN#">
	SELECT rank
	FROM users
	WHERE id = #session.userid#
</cfquery>

<cfset rank = getRank.rank>