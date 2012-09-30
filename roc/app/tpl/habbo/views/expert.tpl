<cfquery name="GetStaff" datasource="#config.DSN#">
	SELECT * 
	FROM users
	WHERE rank > 1
	ORDER BY rank DESC
</cfquery>
<cfquery name="GeteXperts" datasource="#config.DSN#">
	SELECT users.*, user_achievements.*
	FROM users, user_achievements
	WHERE achievement_id = 32 AND users.id = user_achievements.user_id
</cfquery>

<div id="container">
	<div id="content" style="position: relative" class="clearfix"><div>

	<div class="content">
		<div class="habblet-container" style="float:left;">
		<div class="cb settings">
			<div class="bt"><div></div></div><div class="i1"><div class="i2"><div class="i3">
			<div class="box-tabs-container box-tabs-left clearfix">
			    <h2 class="page-owner">eXperts</h2>
			    <ul class="box-tabs"></ul>
			</div>
			
			<div class="box-content" style="background-image:url('app/tpl/habbo/images/backgrounds/habbox.gif'); width:890px; height:1340px; padding-left:55px;">
				<cfoutput query="GeteXperts">
					<div class="habblet-container" style="width:280px; height: 155px; display:inline-block; ">
					<div class="cb clearfix blue">
						<div class="bt"><div></div></div><div class="i1"><div class="i2"><div class="i3">
						<div class="rounded-container"><div style="background-color: rgb(255, 255, 255); "><div style="margin: 0px 1px; height: 1px; overflow: hidden; background-color: rgb(255, 255, 255); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(144, 144, 144); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(100, 100, 100); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(89, 89, 89); "></div></div></div></div><div style="margin: 0px; height: 1px; overflow: hidden; background-color: rgb(255, 255, 255); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(99, 99, 99); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(89, 89, 89); "></div></div></div><div style="margin: 0px; height: 1px; overflow: hidden; background-color: rgb(144, 144, 144); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(89, 89, 89); "></div></div><div style="margin: 0px; height: 1px; overflow: hidden; background-color: rgb(100, 100, 100); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(89, 89, 89); "></div></div></div><h2 class="title rounded-done">#username#</h2><div style="background-color: rgb(255, 255, 255); "><div style="margin: 0px; height: 1px; overflow: hidden; background-color: rgb(100, 100, 100); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(89, 89, 89); "></div></div><div style="margin: 0px; height: 1px; overflow: hidden; background-color: rgb(144, 144, 144); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(89, 89, 89); "></div></div><div style="margin: 0px; height: 1px; overflow: hidden; background-color: rgb(255, 255, 255); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(99, 99, 99); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(89, 89, 89); "></div></div></div><div style="margin: 0px 1px; height: 1px; overflow: hidden; background-color: rgb(255, 255, 255); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(144, 144, 144); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(100, 100, 100); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(89, 89, 89); "></div></div></div></div></div></div>
						<div style="float:left">
							<img alt="#username#" src="avatarimage.cfm?user=#username#&direction=2&head_direction=3&gesture=sml&img_format=png&size=&action=wav">
						</div>
						<div style="float:left">
							<img alt="badge" src="app/tpl/habbo/images/badges/XXX.gif"><br />
							<img alt="badge" src="app/tpl/habbo/images/flags/wor.png">
						</div>
						<div style="float:left; width:150px; overflow:hidden; padding-top:5px;">
							#motto#
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