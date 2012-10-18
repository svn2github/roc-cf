<cfquery name="getMotto" datasource="#Config.DSN#">
	SELECT motto
	FROM users
	WHERE id = <CFQUERYPARAM VALUE="#session.userid#" CFSQLType="CF_SQL_INTGER">
	LIMIT 1
</cfquery>

<cfset motto = getMotto.motto>




