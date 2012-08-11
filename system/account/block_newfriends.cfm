<cfquery name = "UserInfo" datasource = "#DSN#">
	SELECT block_newfriends FROM users
	WHERE id = #session.userid#
</cfquery>
<cfif UserInfo.block_newfriends>
<cfquery datasource = "#DSN#">
	UPDATE users SET block_newfriends = '0'
	WHERE id = #session.userid#
</cfquery>
You are receiveing friend requests
<cfelse>
<cfquery datasource = "#DSN#">
	UPDATE users SET block_newfriends = '1'
	WHERE id = #session.userid#
</cfquery>
You are not receiveing friend requests
</cfif>
