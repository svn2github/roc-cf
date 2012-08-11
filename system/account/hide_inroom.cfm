<cfquery name = "UserInfo" datasource = "#DSN#">
	SELECT hide_inroom FROM users
	WHERE id = #session.userid#
</cfquery>
<cfif UserInfo.hide_inroom>
<cfquery datasource = "#DSN#">
	UPDATE users SET hide_inroom = '0'
	WHERE id = #session.userid#
</cfquery>
Your friends can see rooms you are in
<cfelse>
<cfquery datasource = "#DSN#">
	UPDATE users SET hide_inroom = '1'
	WHERE id = #session.userid#
</cfquery>
Your friends can not see rooms you are in
</cfif>
