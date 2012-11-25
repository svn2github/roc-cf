<cfquery name="getPermissions" datasource="#config.DSN#">
	SELECT cmd_update_catalogue, cmd_update_filter, cmd_ha, cmd_hal, cmd_alert, cmd_roomalert, cmd_sa, cmd_disconnect, cmd_summon
	FROM permissions_ranks
	WHERE rank = <CFQUERYPARAM VALUE="#session.rank#" CFSQLType="CF_SQL_INTGER">
	LIMIT 1
</cfquery>

<!-- Updates --->
<cfset permissions.update_catalogue = getPermissions.cmd_update_catalogue>
<cfset permissions.update_filter = getPermissions.cmd_update_filter>

<!--- Alerts --->
<cfset permissions.alert_hotel = getPermissions.cmd_ha>
<cfset permissions.alert_hotel_link = getPermissions.cmd_hal>
<cfset permissions.alert = getPermissions.cmd_alert>
<cfset permissions.alert_room = getPermissions.cmd_roomalert>
<cfset permissions.alert_staff = getPermissions.cmd_sa>

<!--- Extras --->
<cfset permissions.disconnect = getPermissions.cmd_disconnect>
<cfset permissions.summon = getPermissions.cmd_summon>
