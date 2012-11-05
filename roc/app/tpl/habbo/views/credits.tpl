<cfif not StructKeyExists(session, "userid")>
	<cflocation url="?p=index" addtoken="no">
</cfif>

<cfquery name="GetCredits" datasource="#config.DSN#">
	SELECT users.username, users.motto, users.credits
	FROM users
	WHERE users.id = <CFQUERYPARAM VALUE="#session.userid#" CFSQLType="CF_SQL_INTGER">
</cfquery>

<cfquery name="GetCreditAmount" datasource="#config.DSN#" cachedwithin="#createTimeSpan(0,12,0,0)#">
	SELECT server_settings.credits
	FROM server_settings
</cfquery>

<div id="container">
	<div id="content" style="position: relative" class="clearfix"><div>

	<cfoutput>
	<div class="habblet-container " style="float:left; width:770px;">
		<div class="cb clearfix orange "><div class="bt"><div></div></div><div class="i1"><div class="i2"><div class="i3">
			<div class="rounded-container"><div style="background-color: rgb(255, 255, 255);"><div style="margin: 0px 1px; height: 1px; overflow: hidden; background-color: rgb(255, 255, 255);"><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(249, 150, 85);"><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(247, 108, 16);"><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(246, 98, 0);"></div></div></div></div><div style="margin: 0px; height: 1px; overflow: hidden; background-color: rgb(255, 255, 255);"><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(247, 108, 16);"><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(246, 98, 0);"></div></div></div><div style="margin: 0px; height: 1px; overflow: hidden; background-color: rgb(249, 150, 85);"><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(246, 98, 0);"></div></div><div style="margin: 0px; height: 1px; overflow: hidden; background-color: rgb(247, 108, 16);"><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(246, 98, 0);"></div></div></div><h2 class="title rounded-done">#sitename# Credits</h2><div style="background-color: rgb(255, 255, 255);"><div style="margin: 0px; height: 1px; overflow: hidden; background-color: rgb(247, 108, 16);"><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(246, 98, 0);"></div></div><div style="margin: 0px; height: 1px; overflow: hidden; background-color: rgb(249, 150, 85);"><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(246, 98, 0);"></div></div><div style="margin: 0px; height: 1px; overflow: hidden; background-color: rgb(255, 255, 255);"><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(247, 108, 16);"><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(246, 98, 0);"></div></div></div><div style="margin: 0px 1px; height: 1px; overflow: hidden; background-color: rgb(255, 255, 255);"><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(249, 150, 85);"><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(247, 108, 16);"><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(246, 98, 0);"></div></div></div></div></div></div>
			<div class="method-group online clearfix">
				<div class="method idx0">
					<div class="method-content">
						<h2>Free credits!</h2>
						<div class="summary clearfix">
							#sitename# credits are completely FREE, and always will be!
						</div>
					</div>
					<div class="smallprint">
						<style type="text/css">.method-group.online .method.idx0 h2{font-size:26px!important;}</style>
					</div>
				</div>
					<div class="method idx1 nosmallprint">
						<div class="method-content">
							<h2>How do I gain more credits?</h2>
							<div class="summary clearfix">
								<div id="credits-countdown">
									Credits are automatically given out every 15 minutes, currently you will receive #GetCreditAmount.credits# credits per 15 minutes while logged into #sitename#.
								</div>
							</div>
						</div>
					</div>
			</div>

			<div class="disclaimer" style="border: 0 !important;">
				<h3><span>Beware of Scammers</span></h3>
				Some users will try trick you into giving your password to steal your credits. Make sure you dont enter your password anywhere except the #sitename# login.<br>
			</div>
		</div></div></div><div class="bb"><div></div></div></div>
	</div>
	</cfoutput>

	<cfoutput query="GetCredits">
	<div class="habblet-container" style="float:left; width:770px;">		
			<div class="cb clearfix darkgray "><div class="bt"><div></div></div><div class="i1"><div class="i2"><div class="i3">

			<div id="redeem-habblet">
			<div class="redeem-balance">
				<p class="redeem-balance-text">Balance:</p>
				<p><span class="redeem-balance-amount">#credits#</span></p>
			</div>

			<div class="redeem-balance" style="width:594px;height:40px;">
				<p class="redeem-balance-text"><b>What can you spend credits on?</b></p>
				<p class="redeem-balance-text">You can currently spend credits on in-game furniture and lots of other features in-game.</p>
			</div>
		</div>

		</div></div></div><div class="bb"><div></div></div></div>
	</div>
	</cfoutput>

	</div>
</div>
