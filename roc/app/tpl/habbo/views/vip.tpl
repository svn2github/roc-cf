<cfquery name="GetVIP" datasource="#config.DSN#">
	SELECT users.username, users.motto
	FROM users
	WHERE users.vip = '1'
</cfquery>

<div id="container">
	<div id="content" style="position: relative" class="clearfix"><div>

	<div class="content">
		<div class="habblet-container" style="float:left;">
		<div class="cb settings">
			<div class="bt"><div></div></div><div class="i1"><div class="i2"><div class="i3">
			<div class="box-tabs-container box-tabs-left clearfix">
			    <h2 class="page-owner">VIP</h2>
			    <ul class="box-tabs"></ul>
			</div>

			<div class="box-content" style="background-image:url('app/tpl/habbo/images/backgrounds/vip_group.png'); width:890px; height:1340px; padding-left:55px;">
				<div style="display:block;">
				
				<!-- Background Display Purposes Only -->
					<div class="habblet-container" style="width:280px; float:left; height: 180px"></div>
				<!-- Background Display Purposes Only -->

				<div class="habblet-container" style="width:280px; float:left; height: 180px">
				<div class="cb clearfix blue">
					<div class="bt"><div></div></div><div class="i1"><div class="i2"><div class="i3">
					<div class="rounded-container"><div style="background-color: rgb(255, 255, 255); "><div style="margin: 0px 1px; height: 1px; overflow: hidden; background-color: rgb(255, 255, 255); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(144, 144, 144); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(100, 100, 100); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(89, 89, 89); "></div></div></div></div><div style="margin: 0px; height: 1px; overflow: hidden; background-color: rgb(255, 255, 255); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(99, 99, 99); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(89, 89, 89); "></div></div></div><div style="margin: 0px; height: 1px; overflow: hidden; background-color: rgb(144, 144, 144); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(89, 89, 89); "></div></div><div style="margin: 0px; height: 1px; overflow: hidden; background-color: rgb(100, 100, 100); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(89, 89, 89); "></div></div></div><h2 class="title rounded-done">Buy VIP</h2><div style="background-color: rgb(255, 255, 255); "><div style="margin: 0px; height: 1px; overflow: hidden; background-color: rgb(100, 100, 100); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(89, 89, 89); "></div></div><div style="margin: 0px; height: 1px; overflow: hidden; background-color: rgb(144, 144, 144); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(89, 89, 89); "></div></div><div style="margin: 0px; height: 1px; overflow: hidden; background-color: rgb(255, 255, 255); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(99, 99, 99); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(89, 89, 89); "></div></div></div><div style="margin: 0px 1px; height: 1px; overflow: hidden; background-color: rgb(255, 255, 255); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(144, 144, 144); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(100, 100, 100); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(89, 89, 89); "></div></div></div></div></div></div>
					<div style="text-align:center; width 270px; overflow:hidden; padding:5px;">
						<img src="http://i.imgur.com/3Yrwj.png" align="middle">
					</div>
					<div style="float:left; text-align:center; width:260px; overflow:hidden; padding:5px;">
						VIP is a purchased benefit which gives you extra features as well as helps us keep running the hotel to it's best ability.<br /><br />
						You can buy VIP from Otaku-Studios.com by visiting your Profile Settings (User CP) then clicking Paid Subscriptions. Don't forget to add your forum name to your account settings here on Habboon!
					</div>
					</div></div></div><div class="bb"><div></div></div>
				</div>
				</div>

				<!-- Background Display Purposes Only -->
					<div class="habblet-container" style="width:280px; float:left; height: 180px"></div>
				<!-- Background Display Purposes Only -->

				<cfoutput query="GetVIP">
					<div class="habblet-container" style="width:280px; float:left; height: 155px">
					<div class="cb clearfix blue">
						<div class="bt"><div></div></div><div class="i1"><div class="i2"><div class="i3">
						<div class="rounded-container"><div style="background-color: rgb(255, 255, 255); "><div style="margin: 0px 1px; height: 1px; overflow: hidden; background-color: rgb(255, 255, 255); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(144, 144, 144); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(100, 100, 100); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(89, 89, 89); "></div></div></div></div><div style="margin: 0px; height: 1px; overflow: hidden; background-color: rgb(255, 255, 255); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(99, 99, 99); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(89, 89, 89); "></div></div></div><div style="margin: 0px; height: 1px; overflow: hidden; background-color: rgb(144, 144, 144); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(89, 89, 89); "></div></div><div style="margin: 0px; height: 1px; overflow: hidden; background-color: rgb(100, 100, 100); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(89, 89, 89); "></div></div></div><h2 class="title rounded-done">#username#</h2><div style="background-color: rgb(255, 255, 255); "><div style="margin: 0px; height: 1px; overflow: hidden; background-color: rgb(100, 100, 100); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(89, 89, 89); "></div></div><div style="margin: 0px; height: 1px; overflow: hidden; background-color: rgb(144, 144, 144); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(89, 89, 89); "></div></div><div style="margin: 0px; height: 1px; overflow: hidden; background-color: rgb(255, 255, 255); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(99, 99, 99); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(89, 89, 89); "></div></div></div><div style="margin: 0px 1px; height: 1px; overflow: hidden; background-color: rgb(255, 255, 255); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(144, 144, 144); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(100, 100, 100); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(89, 89, 89); "></div></div></div></div></div></div>
						<div style="float:left">
							<img alt="#username#" src="avatarimage.cfm?user=#username#&direction=2&head_direction=3&gesture=sml&img_format=png&size=&action=wav">
						</div>
						<div style="float:left">
							<img alt="badge" src="app/tpl/habbo/images/badges/VIP.gif"><br />
							<img alt="badge" src="app/tpl/habbo/images/flags/wor.png">
						</div>
						<div style="float:left; width:150px; overflow:hidden; padding-top:5px;">
							<cfset safe_motto = REReplace(motto,'<[^>]*>','','all')>
							#safe_motto#
						</div>
						</div></div></div><div class="bb"><div></div></div>
					</div>
					</div>
				</cfoutput>
				</div>
			</div>
			
			</div></div></div><div class="bb"><div></div></div></div>
		</div></div>

	</div>
</div>
