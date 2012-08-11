<cfquery name = "UserInfo" datasource = "#DSN#">
	SELECT accept_trading FROM users
	WHERE id = #session.userid#
</cfquery>
<cfif UserInfo.accept_trading>
<cfquery datasource = "#DSN#">
	UPDATE users SET accept_trading = '0'
	WHERE id = #session.userid#
</cfquery>
You are not allowing trade requests
<cfelse>
<cfquery datasource = "#DSN#">
	UPDATE users SET accept_trading = '1'
	WHERE id = #session.userid#
</cfquery>
You are allowing trade requests
</cfif>
