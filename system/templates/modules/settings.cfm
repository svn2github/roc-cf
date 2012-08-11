<cfif Not StructKeyExists(Session, 'id')>
	<cfabort>
</cfif>
<cfquery name = "UserInfo" datasource = "#DSN#">
	SELECT block_newfriends, hide_online, hide_inroom, accept_trading FROM users
	WHERE id = #session.userid#
</cfquery>
		<div id="contentbox">
			<div class="container" style="background-image: url('../img/modules/settings.png');">
			    <div class="title">Settings</div>
			    <div class="content">
			        <div class="item" id="block_newfriends" onclick="block_newfriends()">You are<cfif UserInfo.block_newfriends> not</cfif> receiveing friend requests</div>
			        <div class="item" id="hide_online" onclick="hide_online()">Your friends can<cfif UserInfo.hide_online> not</cfif> see your online status</div>
			        <div class="item" id="hide_inroom" onclick="hide_inroom()">Your friends can<cfif UserInfo.hide_inroom> not</cfif> see rooms you are in</div>
			        <div class="item" id="accept_trading" onclick="accept_trading()">You are<cfif Not UserInfo.accept_trading> not</cfif> allowing trade requests</div>
			    </div>
			</div>
		</div>