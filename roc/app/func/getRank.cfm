<cfquery name="getRank" datasource="#config.DSN#">
	SELECT rank
	FROM users
	WHERE id = #session.userid#
	LIMIT 1
</cfquery>

<cfset rank = getRank.rank>
<cfset session.rank = getRank.rank>