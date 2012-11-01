<cfquery name = "getSkin" datasource = "#config.DSN#">
	SELECT *
	FROM cms_skins
	WHERE ID = <CFQUERYPARAM VALUE="#skin#" CFSQLType="CF_SQL_INTGER">
	LIMIT 1
</cfquery>

<cfoutput><div class="movable widget RoomsWidget" id="widget-#LoadWidgets.id#" style=" left: #wX#px; top: #wY#px; z-index: #wZ#;">
	<cfif editmode is true>
		<img src="app/tpl/habbo/images/myhabbo/icon_edit.gif" width="19" height="18" class="edit-button" id="widget-#LoadWidgets.id#-edit" />
		<script language="JavaScript" type="text/javascript">
			Event.observe("widget-#LoadWidgets.id#-edit", "click", function(e) { openEditMenu(e, #LoadWidgets.id#, "widget", "widget-#LoadWidgets.id#-edit"
			); }, false);
		</script>
	</cfif>
	
	<cfquery name = "RoomDetails" datasource = "#config.DSN#">
		SELECT *
		FROM rooms
		WHERE owner = <CFQUERYPARAM VALUE="#session.username#" CFSQLType="CF_SQL_VARCHAR">
	</cfquery>
	<cfset opentype = #RoomDetails.state#>
	<cfif opentype is "0">
		<cfset opentype = "open">
	<cfelseif opentype is "1">
		<cfset opentype = "locked">
	<cfelseif opentype is "2">
		<cfset opentype = "password">
	</cfif>

	<div class="w_skin_#getSkin.name#">
		<div class="widget-corner" id="widget-#LoadWidgets.id#-handle">
			<div class="widget-headline"><h3><span class="header-left">&nbsp;</span><span class="header-middle">MY ROOMS</span><span class="header-right">&nbsp;</span></h3></div>	
		</div>
		<div class="widget-body">
			<div class="widget-content">
				<div id="room_wrapper">
					<table border="0" cellpadding="0" cellspacing="0"></cfoutput>
						<cfoutput query="RoomDetails">
							<tr>
								<td valign="top" class="dotted-line">
									<div class="room_image"><img src="app/tpl/habbo/images/rooms/room_icon_#opentype#.gif" alt="" align="middle"/></div>
								</td>
								<td class="dotted-line">
									<div class="room_info">
										<div class="room_name">#caption#</div>
										<div class="clear"></div>
										<div>#description#</div>
										<a href="../client/?forwardId=2&amp;roomId=#id#"
										   target="client"
										   id="room-navigation-link_#id#"
										   onclick="roomForward(this, '#id#', 'private', false); return false;">
										 Enter room
										 </a>
									</div>
									<br class="clear" />
								</td>
							</tr>
						</cfoutput>
					</table>
				</div>
				<div class="clear"></div>
			</div>
		</div>
	</div>
</div>
