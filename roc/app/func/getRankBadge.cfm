<cfquery name="getBadge" datasource="#config.DSN#">
	SELECT badgeid
	FROM ranks
	WHERE id = #rank#
</cfquery>

<cfset badgeid= getBadge.badgeid>