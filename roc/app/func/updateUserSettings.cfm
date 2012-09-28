<cfquery name="updateUserSettings" datasource="#config.DSN#">
	UPDATE users
	SET motto = <CFQUERYPARAM VALUE="#updateMotto#" CFSQLType="CF_SQL_VARCHAR" MAXLENGTH="40">, subscribed = '<cfif IsDefined("emailNewsletterEnabled")>1<cfelse>0</cfif>', block_newfriends = '<cfif IsDefined("blockNewFriends")>0<cfelse>1</cfif>', hide_online = '#hideOnlineStatus#', hide_inroom = '#hideInRoom#'
	WHERE id = #session.userid#
</cfquery>

<cflocation url="../../?p=account&tab=2&success" addtoken="no">