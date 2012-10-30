<cfif not StructKeyExists(session, "userid")><cflocation url="?p=index" addtoken="no"></cfif>

<cfquery name="GetProfile" datasource="#config.DSN#">
	SELECT users.username, users.motto, users.online, users.account_created, user_stats.groupid
	FROM users, user_stats
	WHERE users.id = <CFQUERYPARAM VALUE="#session.userid#" CFSQLType="CF_SQL_INTGER"> AND user_stats.id = <CFQUERYPARAM VALUE="#session.userid#" CFSQLType="CF_SQL_INTGER">
	LIMIT 1
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
	<div id="content" style="position: relative" class="clearfix"><div>

	<div class="content">
		<div class="habblet-container" style="float:left;">
		<div class="cb settings">
			<div class="bt"><div></div></div><div class="i1"><div class="i2"><div class="i3">
			<div class="box-tabs-container box-tabs-left clearfix">
			    <h2 class="page-owner">Profile</h2>
			    <ul class="box-tabs"></ul>
			</div>
			
			<div class="box-content" style="background-image:url('app/tpl/habbo/images/backgrounds/hotel.png'); width:890px; height:1340px; padding-left:55px;">
				<cfoutput query="GetProfile">
					<div class="habblet-container" style="width:280px; height: 155px; display:inline-block; ">
					<div class="cb clearfix blue">
						<div class="bt"><div></div></div><div class="i1"><div class="i2"><div class="i3">
						<div class="rounded-container"><div style="background-color: rgb(255, 255, 255); "><div style="margin: 0px 1px; height: 1px; overflow: hidden; background-color: rgb(255, 255, 255); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(144, 144, 144); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(100, 100, 100); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(89, 89, 89); "></div></div></div></div><div style="margin: 0px; height: 1px; overflow: hidden; background-color: rgb(255, 255, 255); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(99, 99, 99); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(89, 89, 89); "></div></div></div><div style="margin: 0px; height: 1px; overflow: hidden; background-color: rgb(144, 144, 144); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(89, 89, 89); "></div></div><div style="margin: 0px; height: 1px; overflow: hidden; background-color: rgb(100, 100, 100); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(89, 89, 89); "></div></div></div><h2 class="title rounded-done">#username#</h2><div style="background-color: rgb(255, 255, 255); "><div style="margin: 0px; height: 1px; overflow: hidden; background-color: rgb(100, 100, 100); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(89, 89, 89); "></div></div><div style="margin: 0px; height: 1px; overflow: hidden; background-color: rgb(144, 144, 144); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(89, 89, 89); "></div></div><div style="margin: 0px; height: 1px; overflow: hidden; background-color: rgb(255, 255, 255); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(99, 99, 99); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(89, 89, 89); "></div></div></div><div style="margin: 0px 1px; height: 1px; overflow: hidden; background-color: rgb(255, 255, 255); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(144, 144, 144); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(100, 100, 100); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(89, 89, 89); "></div></div></div></div></div></div>
						<div style="float:left; overflow:hidden;">
							<img alt="#GetProfile.username#" src="avatarimage.cfm?user=#GetProfile.username#&direction=2&head_direction=3&gesture=sml&img_format=png&size=&action=wav">
						</div>
						
						
						<div class="profile-info" style="float:left;">
								<br class="clear">
								<cfif GetProfile.online eq 1>
									<img alt="online" src="app/tpl/habbo/images/habbo_online.gif">
								<cfelse>
									<img alt="offline" src="app/tpl/habbo/images/habbo_offline.gif">
								</cfif>
								<div class="birthday text">
									Created On:
								</div>
								<div class="birthday date">
									#GetProfile.account_created#
								</div>
								<div>
									<cfif GetProfile.GroupID neq 0>
										<cfif GetGroupInfo.Badge neq "">
											<div style="float:left; padding-top:5px;padding-right:5px;">
											<cfoutput><img alt="badge" src="client/c_images/groups/#GetGroupInfo.Badge#.gif"><br /></cfoutput>
											</div>
										</cfif>
									</cfif>
								</div>
						</div>
						</div></div></div><div class="bb"><div></div></div>
					</div>
					</div>
				</cfoutput>
			</div>
			
			</div></div></div><div class="bb"><div></div></div></div>
		</div></div>

	</div>
</div>
