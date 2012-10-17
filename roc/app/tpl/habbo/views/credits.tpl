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

	<cfoutput query="GetCredits">
	<div class="habblet-container" style="float:left; width:770px;">		
			<div class="cb clearfix darkgray "><div class="bt"><div></div></div><div class="i1"><div class="i2"><div class="i3">

			<div id="redeem-habblet">
			<div class="redeem-balance">
				<p class="redeem-balance-text">Balance:</p>
				<p><span class="redeem-balance-amount">#credits#</span></p>
			</div>

<!---
			<div class="redeem-form-container clearfix" style="padding-top:12px;">
				<div class="redeem-redeeming">
					<b>About Credits</b>: Credits are automatically given out every 15 minutes, currently you will receive #GetCreditAmount.credits# per 15 minutes while logged into #sitename#
				</div>
			</div> --->
			<div class="redeem-balance" style="width:594px;height:40px;">
				<p class="redeem-balance-text"><b>About Credits</b></p>
				<p class="redeem-balance-text">Credits are automatically given out every 15 minutes, currently you will receive #GetCreditAmount.credits# per 15 minutes while logged into #sitename#.</p>
			</div>
		</div>

		</div></div></div><div class="bb"><div></div></div></div>
	</div>
	</cfoutput>

	</div>
</div>
