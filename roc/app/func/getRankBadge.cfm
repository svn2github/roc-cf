<cfquery name="getBadge" datasource="#config.DSN#">
	SELECT badgeid
	FROM ranks
	WHERE id = #rank#
	LIMIT 1
</cfquery>

<cfset badgeid= getBadge.badgeid>