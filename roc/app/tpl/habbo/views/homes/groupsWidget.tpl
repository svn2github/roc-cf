<cfquery name = "getSkin" datasource = "#config.DSN#">
	SELECT *
	FROM cms_skins
	WHERE ID = '#skin#'
	LIMIT 1
</cfquery>

<cfoutput><div class="movable widget GroupsWidget" id="widget-#LoadWidgets.id#" style=" left: #wX#px; top: #wY#px; z-index: #wZ#;">
	<cfif editmode is true>
		<img src="app/tpl/habbo/images/myhabbo/icon_edit.gif" width="19" height="18" class="edit-button" id="widget-#LoadWidgets.id#-edit" />
		<script language="JavaScript" type="text/javascript">
			Event.observe("widget-#LoadWidgets.id#-edit", "click", function(e) { openEditMenu(e, #LoadWidgets.id#, "widget", "widget-#LoadWidgets.id#-edit"
			); }, false);
		</script>
	</cfif>
	
	<cfquery name = "GroupList" datasource = "#config.DSN#">
		SELECT *
		FROM group_memberships
		WHERE userid = #session.userid#
	</cfquery>
	<div class="w_skin_#getSkin.name#">
		<div class="widget-corner" id="widget-#LoadWidgets.id#-handle">
			<div class="widget-headline"><h3><span class="header-left">&nbsp;</span><span class="header-middle">MY GROUPS (<span id="groups-list-size">#GroupList.recordcount#</span>)</span><span class="header-right">&nbsp;</span></h3></div>	
		</div>
		<div class="widget-body">
			<div class="widget-content">
				<div class="groups-list-container">
					<ul class="groups-list"></cfoutput>
						<cfoutput query="GroupList">
							<cfquery name = "GroupDetails" datasource = "#config.DSN#">
								SELECT *
								FROM groups
								WHERE id = #groupid#
							</cfquery>
							<li title="#GroupDetails.name#" id="groups-list-#LoadWidgets.id#">
								<div class="groups-list-icon"><a href="/groups/#GroupDetails.name#"><img src="client/c_images/groups/#GroupDetails.badge#.gif" /></a></div>
								<div class="groups-list-open"></div>
								<h4>
									<a href="/groups/#GroupDetails.name#">#GroupDetails.name#</a>
								</h4>
								<p>
									Group created:<br /> 
									<cfif GroupDetails.ownerid is session.userid><img src="/images/groups/owner_icon.gif" width="15" height="15" class="groups-list-icon" alt="Owner" title="Owner" /></cfif>
									<b>#GroupDetails.created#</b>
								</p>
								<div class="clear"></div>
							</li>
						</cfoutput>
					</ul>
				</div>
				<div class="groups-list-loading">
					<div><a href="#" class="groups-loading-close"></a></div>
					<div class="clear"></div>
					<p style="text-align:center"><img src="/images/progress_bubbles.gif" alt="" width="29" height="6" /></p>
				</div>
				<div class="groups-list-info"></div>
				<div class="clear"></div>
			</div>
		</div>
	</div>
</div>
