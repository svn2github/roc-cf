<cfquery name = "getSkin" datasource = "#config.DSN#">
	SELECT *
	FROM cms_skins
	WHERE ID = <CFQUERYPARAM VALUE="#skin#" CFSQLType="CF_SQL_INTGER">
	LIMIT 1
</cfquery>

<cfoutput>
<div class="movable widget ProfileWidget" id="widget-#id#" style=" left: #wX#px; top: #wY#px; z-index: #wZ#;">
	<cfif editmode is true>
		<img src="app/tpl/habbo/images/myhabbo/icon_edit.gif" width="19" height="18" class="edit-button" id="widget-#id#-edit" />
		<script language="JavaScript" type="text/javascript">
			Event.observe("widget-#id#-edit", "click", function(e) { openEditMenu(e, #id#, "widget", "widget-#id#-edit"
			); }, false);
		</script>
	</cfif>
	<div class="w_skin_#getSkin.name#">
		<div class="widget-corner" id="widget-3-handle">
			<div class="widget-headline">
				<h3 style="left: 0px; top: 7px">
					<span class="header-left"></span>
					<span class="header-middle">MY HABBO</span>
					<span class="header-right"></span>
				</h3>
			</div>	
		</div>
		<div class="widget-body">
			<div class="widget-content">
				<div class="profile-info">
					<div class="name" style="float: left">
						<span class="name-text">#GetProfile.username#</span>
					</div>
					<br class="clear" />
					<cfif GetProfile.online is "1">
						<img alt="online" src="app/tpl/habbo/images/habbo_online.gif" />
					<cfelse>
						<img alt="offline" src="app/tpl/habbo/images/habbo_offline.gif" />
					</cfif>
					<div class="birthday text">
						Created on:
					</div>
					<div class="birthday date">
						#DateFormat(DateAdd("s", getProfile.account_created, "January 1 1970 00:00:00"), "mmmm dd, yyyy")#
					</div>
					<cfif isdefined('Theirbadge') AND not Theirbadge is "">
						<img src="/images/badges/#Theirbadge#.gif" />
					</cfif>
				</div>
				<div class="profile-figure">
					<img alt="#GetProfile.username#" src="avatarimage.cfm?user=<cfoutput>#GetProfile.username#</cfoutput>&size=b&direction=4&head_direction=4&gesture=sml">
							        			</div>
				<div class="profile-motto">
					#getProfile.motto#
					<div class="clear"></div>
				</div>
				<cfif isdefined('session.username')>
					<cfif not session.username is GetProfile.username>
						<div class="profile-friend-request clearfix">
							<a href="##" class="new-button" id="add-friend" style="float: left"><b>Add as friend</b><i></i></a>
						</div>
					</cfif>
				</cfif>
				
				<br clear="all" style="display: block; height: 1px"/>
			    <div id="profile-tags-panel">
				    <div id="profile-tag-list">
						<div id="profile-tags-container">
							<cfquery name = "GetTags" datasource = "#config.DSN#">
								SELECT tag
								FROM user_tags
								WHERE user_id = '#GetProfile.id#'
							</cfquery>
					        <cfif not GetTags.recordcount>
					        	No tags
					        <cfelse>
						    	<cfloop query="GetTags">
									<span class="tag-search-rowholder">
										<a href="../tag/index.cfm?tag=#tag#" class="tag-search-link tag-search-link-clubhabbo">#tag#</a>
								        <img border="0" class="tag-add-link tag-add-link-#tag#" onMouseOver="this.src='app/tpl/habbo/images/tags/tag_button_add_hi.gif'" onMouseOut="this.src='app/tpl/habbo/images/tags/tag_button_add.gif'" src="app/tpl/habbo/images/tags/tag_button_add.gif" />
								    </span>
								</cfloop>
					        </cfif>
						</div>
						<script type="text/javascript">
						    Event.onDOMReady(function() {
						        TagHelper.setTexts({
						            buttonText: "OK",
						            tagLimitText: "You\'ve reached the tag limit - delete one of your tags if you want to add a new one."
						        });
						    });
						</script>
				    </div>
					<div id="profile-tags-status-field">
						<div style="display: block;">
							<div class="content-red">
								<div class="content-red-body">
									<span id="tag-limit-message"><img src="app/tpl/habbo/images/myhabbo/icon_error.gif"/> You've reached the tag limit - delete one of your tags if you want to add a new one.</span>
									<span id="tag-invalid-message"><img src="app/tpl/habbo/images/myhabbo/icon_error.gif"/> Invalid tag</span>
								</div>
							</div>
							<div class="content-red-bottom">
								<div class="content-red-bottom-body"></div>
							</div>
						</div>
					</div>
				</div>
				    <script type="text/javascript">
						Event.onDOMReady(function() {
							new ProfileWidget('#GetProfile.id#', '#GetProfile.id#', {
								headerText: "Are you sure?",
								messageText: "Are you sure you want to ask <strong\>#GetProfile.username#</strong\> to be your friend?",
								buttonText: "OK",
								cancelButtonText: "Cancel"
							});
						});
					</script>
				<div class="clear"></div>
			</div>
		</div>
	</div>
</div>
</cfoutput>
