<cfquery name="getMotto" datasource="#Config.DSN#">
	SELECT motto
	FROM users
	WHERE id = #session.userid#
</cfquery>

<cfset motto = getMotto.motto>




