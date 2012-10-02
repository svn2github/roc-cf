<cfif not StructKeyExists(session, "userid")>
	<cfabort>
</cfif>

<cfquery name="updateUserSettings" datasource="#config.DSN#">
	UPDATE users
	SET motto = <CFQUERYPARAM VALUE="#updateMotto#" CFSQLType="CF_SQL_VARCHAR" MAXLENGTH="40">, subscribed = '<cfif IsDefined("emailNewsletterEnabled") AND emailNewsletterEnabled is "true">1<cfelse>0</cfif>', block_newfriends = '<cfif IsDefined("blockNewFriends") AND blockNewFriends is "true">0<cfelse>1</cfif>', hide_online = '#hideOnlineStatus#', hide_inroom = '#hideInRoom#'
	WHERE id = #session.userid#
</cfquery>
