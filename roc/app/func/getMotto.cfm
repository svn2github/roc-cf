<cfquery name="getMotto" datasource="#Config.DSN#">
	SELECT motto
	FROM users
	WHERE id = #session.userid#
	LIMIT 1
</cfquery>

<cfset motto = getMotto.motto>




