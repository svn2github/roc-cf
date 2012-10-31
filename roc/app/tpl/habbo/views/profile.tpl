<cfif not StructKeyExists(session, "userid")><cflocation url="?p=index" addtoken="no"></cfif>

<cfif isdefined('edit')>
	<cfset editmode = true>
<cfelse>
	<cfset editmode = false>
</cfif>

<cfquery name="GetProfile" datasource="#config.DSN#">
	SELECT users.username, users.motto, users.online, user_stats.groupid, users.account_created
	FROM users, user_stats
	WHERE users.id = <CFQUERYPARAM VALUE="#session.userid#" CFSQLType="CF_SQL_INTGER"> AND user_stats.id = <CFQUERYPARAM VALUE="#session.userid#" CFSQLType="CF_SQL_INTGER">
	LIMIT 1
</cfquery>

<cfquery name = "getHome" datasource = "#config.DSN#">
	SELECT *
	FROM cms_homes
	WHERE user = '#session.userid#'
</cfquery>

<cfif not getHome.recordcount>
	<!-- We don't have a home - let's make one! :D -->
	<cfquery name = "HaveaHome" datasource = "#config.DSN#">
		INSERT INTO cms_homes (user)
		VALUES (#session.userid#)
	</cfquery>

	<cfquery name = "HaveaProfileWidget" datasource = "#config.DSN#">
		INSERT INTO cms_widgets (wX, wY, wZ, type, user)
		VALUES (50,50,1,1,#session.userid#)
	</cfquery>
</cfif>

<cfquery name = "getHome" datasource = "#config.DSN#">
	SELECT *
	FROM cms_homes
	WHERE user = '#session.userid#'
</cfquery>

<cfquery name = "LoadStickers" datasource = "#config.DSN#">
	SELECT *
	FROM cms_stickers
	WHERE user = '#session.userid#'
</cfquery>

<cfquery name = "LoadWidgets" datasource = "#config.DSN#">
	SELECT *
	FROM cms_widgets
	WHERE user = '#session.userid#'
</cfquery>

<cfif GetProfile.GroupID neq 0>
	<cfquery name="GetGroupInfo" datasource="#config.DSN#">
		SELECT groups.badge
		FROM groups
		WHERE groups.id = <CFQUERYPARAM VALUE="#GetProfile.GroupID#" CFSQLType="CF_SQL_INTGER">
		LIMIT 1
	</cfquery>
</cfif>

<div id="container">
	<div id="content" style="position: relative" class="clearfix">

		<div id="mypage-wrapper" class="cbb blue">
			<div class="box-tabs-container box-tabs-left clearfix">
			    <cfif not editmode is true><a href="?p=profile&edit" id="myhabbo-group-tools-button" class="new-button dark-button edit-icon" style="float:left"><b><span></span>Edit</b><i></i></a></cfif>
				<div class="myhabbo-view-tools"></div>
			    <h2 class="page-owner">Profile</h2>
			    <ul class="box-tabs"></ul>
			</div>
			
			<div id="mypage-content">
				<cfif editmode is true>
					<div id="top-toolbar" class="clearfix">
						<!--ul> ADD THESE BACK IN WHEN WE WANT TO BE COOL
							<li><a href="#" id="inventory-button">Inventory</a></li>
							<li><a href="#" id="webstore-button">Webstore</a></li>
						</ul-->
						<form action="#" method="get" style="width: 50%">
							<a id="cancel-button" class="new-button red-button cancel-icon" href="index.cfm"><b><span></span>Cancel</b><i></i></a>
							<a id="save-button" class="new-button green-button save-icon" href="#"><b><span></span>Save</b><i></i></a>
						</form>
					</div>
				</cfif>
				
				<cfoutput><div id="mypage-bg" class="#getHome.background#"></cfoutput>
					<cfif editmode is true><div id="playground-outer"></cfif>
						<div id="playground">
							
							<cfoutput query="LoadStickers">
								<div class="movable sticker s_#sticker#" style="left: #sX#px; top: #sY#px; z-index: #sZ#" id="sticker-#id#">
									<cfif editmode is true>
										<img src="app/tpl/habbo/images/myhabbo/icon_edit.gif" width="19" height="18" class="edit-button" id="sticker-#id#-edit" />
										<script language="JavaScript" type="text/javascript">
											Event.observe("sticker-#id#-edit", "click", function(e) { openEditMenu(e, #id#, "sticker", "sticker-#id#-edit"
											); }, false);
										</script>
									</cfif>
								</div>
							</cfoutput>
							
							
							<cfoutput query="LoadWidgets">
								<cfif type is 1><cfinclude template="homes/profileWidget.tpl" /></cfif>
							</cfoutput>

						</div>
					<cfif editmode is true></div></cfif>
				</div>
			</div>
		</div>
	</div>
</div>

<cfif editmode is true>
	<script language="JavaScript" type="text/javascript">
		initEditToolbar();
		initMovableItems();
		Event.onDOMReady(function() {
			initDraggableDialogs();
			repositionInvalidItems();
		});
	</script>
	<div id="edit-save" style="display:none;"></div>
	<div id="edit-menu" class="menu">
		<div class="menu-header">
			<div class="menu-exit" id="edit-menu-exit"><img src="app/tpl/habbo/images/dialogs/menu-exit.gif" alt="" width="11" height="11" /></div>
			<h3>Edit</h3>
		</div>
	
		<div class="menu-body">
			<div class="menu-content">
				<form action="#" onsubmit="return false;">
					<div id="edit-menu-skins">
						<select id="edit-menu-skins-select">
							<option value="1" id="edit-menu-skins-select-defaultskin">Default</option>
							<option value="6" id="edit-menu-skins-select-goldenskin">Golden</option>
							<option value="3" id="edit-menu-skins-select-metalskin">Metal</option>
							<option value="5" id="edit-menu-skins-select-notepadskin">Notepad</option>
							<option value="2" id="edit-menu-skins-select-speechbubbleskin">Speech Bubble</option>
							<option value="4" id="edit-menu-skins-select-noteitskin">Stickie Note</option>
						</select>
					</div>

					<div id="edit-menu-stickie">
						<p>Warning! If you click 'Remove', the note will be permanently deleted.</p>
					</div>

					<div id="rating-edit-menu">
						<input type="button" id="ratings-reset-link" value="Reset rating" />
					</div>

					<div id="highscorelist-edit-menu" style="display:none">
						<select id="highscorelist-game">
							<option value="">Select game</option>
							<option value="1">Battle Ball: Rebound!</option>
							<option value="2">SnowStorm</option>
							<option value="0">Wobble Squabble</option>
						</select>
					</div>

					<div id="edit-menu-remove-group-warning">
						<p>This item belongs to another user. If you remove it, it will return to their inventory.</p>
					</div>
	
					<div id="edit-menu-gb-availability">
						<select id="guestbook-privacy-options">
							<option value="private">Private</option>
							<option value="public">Public</option>
						</select>
					</div>

					<div id="edit-menu-trax-select">
						<select id="trax-select-options"></select>
					</div>

					<div id="edit-menu-remove">
						<input type="button" id="edit-menu-remove-button" value="Remove" />
					</div>
				</form>
				<div class="clear"></div>
			</div>
		</div>
		<div class="menu-bottom"></div>
	</div>
	<script language="JavaScript" type="text/javascript">
		Event.observe(window, "resize", function() { if (editMenuOpen) closeEditMenu(); }, false);
		Event.observe(document, "click", function() { if (editMenuOpen) closeEditMenu(); }, false);
		Event.observe("edit-menu", "click", Event.stop, false);
		Event.observe("edit-menu-exit", "click", function() { closeEditMenu(); }, false);
		Event.observe("edit-menu-remove-button", "click", handleEditRemove, false);
		Event.observe("edit-menu-skins-select", "click", Event.stop, false);
		Event.observe("edit-menu-skins-select", "change", handleEditSkinChange, false);
		Event.observe("guestbook-privacy-options", "click", Event.stop, false);
		Event.observe("guestbook-privacy-options", "change", handleGuestbookPrivacySettings, false);
		Event.observe("trax-select-options", "click", Event.stop, false);
		Event.observe("trax-select-options", "change", handleTraxplayerTrackChange, false);
	</script>
</cfif>

<script type="text/javascript">
	HabboView.run();
</script>
