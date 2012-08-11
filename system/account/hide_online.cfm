<cfquery name = "UserInfo" datasource = "#DSN#">
	SELECT hide_online FROM users
	WHERE id = #session.userid#
</cfquery>
<cfif UserInfo.hide_online>
<cfquery datasource = "#DSN#">
	UPDATE users SET hide_online = '0'
	WHERE id = #session.userid#
</cfquery>
Your friends can see your online status
<cfelse>
<cfquery datasource = "#DSN#">
	UPDATE users SET hide_online = '1'
	WHERE id = #session.userid#
</cfquery>
Your friends can not see your online status
</cfif>
